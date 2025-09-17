# typed: false
# frozen_string_literal: true

module Rails::On::Sorbet
  # Shim for ActiveSupport::CurrentAttributes to support sorbet
  #
  # @requires_ancestor: singleton(ActiveSupport::CurrentAttributes)
  module CurrentAttributes
    # Holds the data of a single attribute definition
    class Attribute
      #: Symbol
      attr_accessor :name

      #: Object
      attr_accessor :type

      #: String?
      attr_accessor :doc

      #: (Symbol name, Object type, String? doc) -> void
      def initialize(name, type, doc)
        @name = name
        @type = type
        @doc = doc
      end
    end

    # Get a map with all defined attributes and their types
    #
    #: -> Hash[Symbol, Attribute]
    def attribute_map
      @attribute_map ||= {}
    end

    # Declare a new attribute with a sorbet type
    #
    #: (*Symbol, ?type: untyped, ?doc: String?, ?default: untyped) -> void
    def attribute(*names, type: nil, doc: nil, default: ::ActiveSupport::CurrentAttributes::NOT_SET)
      names.each do |name|
        attribute_map[name] = Attribute.new(name, type, doc)
      end
      super(*names, default: default)
    end
  end
end

require 'active_support'

module ActiveSupport
  class CurrentAttributes
    class << self
      prepend Rails::On::Sorbet::CurrentAttributes
    end
  end
end
