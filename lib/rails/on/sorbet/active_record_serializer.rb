# typed: true
# frozen_string_literal: true

module Rails::On::Sorbet
  # @requires_ancestor: singleton(ActiveRecord::Base)
  module ActiveRecordSerializer
    # Contains the data of a serializer definition
    class Definition
      #: Symbol
      attr_reader :name
      #: untyped
      attr_reader :coder
      #: Object
      attr_reader :return_type
      #: Object
      attr_reader :setter_type
      #: String?
      attr_reader :doc

      #: (name: Symbol, coder: untyped, ?return_type: untyped, ?setter_type: untyped, ?doc: String?) -> void
      def initialize(name:, coder:, return_type: nil, setter_type: nil, doc: nil)
        @name = name
        @coder = coder
        @return_type = return_type
        @setter_type = setter_type
        @doc = doc
      end
    end

    #: (
    #|  Symbol,
    #|  ?coder: untyped,
    #|  ?type: untyped,
    #|  ?yaml: Hash[Symbol, untyped],
    #|  ?return_type: untyped,
    #|  ?setter_type: untyped,
    #|  ?doc: String?,
    #|  **untyped
    #| ) ?{ -> void } -> void
    def serialize(
      attr_name,
      coder: nil,
      type: Object,
      yaml: {},
      return_type: nil,
      setter_type: nil,
      doc: nil,
      **kwargs,
      &block
    )
      super(attr_name, coder: coder, type: type, yaml: yaml, **kwargs, &block)

      _sorbet_serializer_definitions[attr_name] = Definition.new(
        name:        attr_name,
        coder:       coder,
        return_type: return_type,
        setter_type: setter_type,
        doc:         doc,
      )
    end

    #: -> Hash[Symbol, Definition]
    def _sorbet_serializer_definitions
      @_sorbet_serializer_definitions ||= {}
    end
  end

end

require 'active_record'
require 'active_record/base'

module ActiveRecord
  class Base # rubocop:disable Style/StaticClass
    extend Rails::On::Sorbet::ActiveRecordSerializer
  end
end
