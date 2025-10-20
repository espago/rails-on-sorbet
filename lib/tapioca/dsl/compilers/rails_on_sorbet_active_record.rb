# typed: true
# frozen_string_literal: true

module Tapioca
  module Compilers
    # Creates .rbi files with types for classes that use ActiveRecord relations
    #: [ConstantType < singleton(::ActiveRecord::Base)]
    class RailsOnSorbetActiveRecordRelations < Tapioca::Dsl::Compiler
      class << self
        # @override
        #: -> T::Enumerable[Module]
        def gather_constants
          all_classes.select do |klass|
            klass < ::ActiveRecord::Base
          end
        end
      end

      # @override
      #: -> void
      def decorate
        root.create_path(constant) do |klass|
          private_relation = klass.create_class('PrivateRelation')
          private_relation.create_include('::TypedRelation')

          private_relation_group_chain = klass.create_class('PrivateRelationGroupChain')
          private_relation_group_chain.create_include('::TypedRelation::GroupChain')

          private_relation_where_chain = klass.create_class('PrivateRelationWhereChain')
          private_relation_where_chain.create_include('::TypedRelation::WhereChain')

          private_collection_proxy = klass.create_class('PrivateCollectionProxy')
          private_collection_proxy.create_include('::TypedRelation::CollectionProxy')


          private_association_relation = klass.create_class('PrivateAssociationRelation')
          private_association_relation.create_include('::TypedAssociationRelation')

          private_relation_group_chain = klass.create_class('PrivateAssociationRelationGroupChain')
          private_relation_group_chain.create_include('::TypedAssociationRelation::GroupChain')

          private_relation_where_chain = klass.create_class('PrivateAssociationRelationWhereChain')
          private_relation_where_chain.create_include('::TypedAssociationRelation::WhereChain')
        end
      end

    end
  end
end
