# typed: true
# frozen_string_literal: true

module Tapioca
  module Compilers
    #: [ConstantType = singleton(::Rails::On::Sorbet::CurrentAttributes)]
    class RailsOnSorbetCurrentAttributes < Tapioca::Dsl::Compiler

      class << self
        # @override
        #: -> Enumerable[Module]
        def gather_constants
          all_classes.select do |klass|
            klass < ::Rails::On::Sorbet::CurrentAttributes
          end
        end
      end

      MOD_NAME = 'RailsOnSorbetCurrentAttributeMethods'

      # @override
      #: -> void
      def decorate
        root.create_path(constant) do |klass|
          mod = klass.create_module(MOD_NAME)
          klass.create_include(MOD_NAME)
          klass.create_extend(MOD_NAME)
          attrs = constant.attribute_map.sort_by do |key, _|
            key.to_s
          end
          # For each setting accessor defined in the class
          attrs.each do |attr_name, attr_type|
            attr_type_str = attr_type.type.to_s
            doc = attr_type.doc
            comments = []
            comments << RBI::Comment.new(doc) if doc
            # Create the RBI definitions for all the missing methods
            mod.create_method(
              attr_name.to_s,
              comments:,
              return_type: attr_type_str,
            )
            mod.create_method(
              "#{attr_name}=",
              comments:,
              parameters:  [create_param('value', type: attr_type_str)],
              return_type: attr_type_str,
            )
          end

        end

      end

    end
  end
end
