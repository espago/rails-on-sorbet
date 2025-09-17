# typed: true
# frozen_string_literal: true

module Tapioca
  module Compilers
    # Creates .rbi files with types for classes that use `alias_association`
    #
    #: [ConstantType = Class & ::Rails::On::Sorbet::AliasAssociation]
    class RailsOnSorbetAliasAssociation < Tapioca::Dsl::Compiler
      class << self
        # @override
        #: -> Enumerable[Module]
        def gather_constants
          all_classes.select do |klass|
            klass.singleton_class < ::Rails::On::Sorbet::AliasAssociation
          end
        end
      end

      # @override
      #:-> void
      def decorate
        definitions = constant._alias_association_definitions
        return unless definitions.present?

        root.create_path(constant) do |klass|
          definitions.each do |alias_name, target_name|
            create_aliases(klass, alias_name, target_name)
          end
        end
      end

      #: (RBI::Scope, Symbol, Symbol) -> void
      def create_aliases(klass, alias_name, target_name)
        association = constant.reflect_on_all_associations.find { |e| e.name == target_name }
        type_string = association.class_name.to_s
        type = "T.nilable(#{type_string})"

        klass.create_method(
          alias_name.to_s,
          return_type: type,
        )

        klass.create_method(
          "#{alias_name}=",
          parameters:  [create_param('val', type: type)],
          return_type: 'void',
        )
      end
    end
  end
end
