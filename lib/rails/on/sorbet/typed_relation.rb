# typed: false
# frozen_string_literal: true

require 'action_controller'
require 'active_support'

# Represents a `X::PrivateRelation` tapioca generated class, where `X` is an ActiveRecord model.
module TypedRelation
  extend T::Generic

  class << self
    def GroupChain(val) = val # rubocop:disable Naming/MethodName
    def WhereChain(val) = val # rubocop:disable Naming/MethodName
  end

  module GroupChain
    extend T::Generic
    include TypedRelation
  end

  module WhereChain
    extend T::Generic
  end
end

def TypedRelation(val) = val # rubocop:disable Style/TopLevelMethodDefinition,Naming/MethodName

# A namespace for typed ActiveRecord association objects.
module TypedAssociation
  class << self
    def Relation(val) = val # rubocop:disable Naming/MethodName
    def CollectionProxy(val) = val # rubocop:disable Naming/MethodName
  end

  # Represents a `X::PrivateAssociationRelation` tapioca generated class, where `X` is an ActiveRecord model.
  module Relation
    extend T::Generic

    class << self
      def GroupChain(val) = val # rubocop:disable Naming/MethodName
      def WhereChain(val) = val # rubocop:disable Naming/MethodName
      def CollectionProxy(val) = val # rubocop:disable Naming/MethodName
    end

    module GroupChain
      extend T::Generic
      include Relation
    end

    module WhereChain
      extend T::Generic
    end
  end

  module CollectionProxy
    extend T::Generic
    include TypedRelation
  end
end
