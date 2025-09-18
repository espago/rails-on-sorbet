# typed: true
# frozen_string_literal: true

module Tapioca
  module Compilers
    # Creates .rbi files with types for classes that use ActiveRecord serializers
    #: [ConstantType < Class & ::Rails::On::Sorbet::ActiveRecordSerializer]
    class RailsOnSorbetActiveRecordSerializer < Tapioca::Dsl::Compiler
      class << self
        # @override
        #: -> T::Enumerable[Module]
        def gather_constants
          all_classes.select do |klass|
            klass.singleton_class < ::Rails::On::Sorbet::ActiveRecordSerializer
          end
        end
      end

      # @override
      #: -> void
      def decorate
        root.create_path(constant) do |klass|
          constant._sorbet_serializer_definitions.sort.each do |name, definition|
            return_type = definition.return_type || definition.coder.try(:return_type) || T.untyped
            setter_type = definition.setter_type || definition.coder.try(:setter_type) || return_type

            return_type_string =
              if return_type == T.unsafe(T.untyped)
                return_type.to_s
              else
                "T.nilable(#{return_type})"
              end

            setter_type_string =
              if setter_type == T.unsafe(T.untyped)
                setter_type.to_s
              else
                "T.nilable(#{setter_type})"
              end

            doc = definition.doc
            comments = []
            comments << RBI::Comment.new(doc) if doc

            klass.create_method(
              name.to_s,
              comments:,
              return_type: return_type_string,
            )
            klass.create_method(
              "#{name}=",
              comments:,
              parameters:  [create_param('value', type: setter_type_string)],
              return_type: setter_type_string,
            )
          end

        end

      end

    end
  end
end
