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
          private_relation = klass.create_class('PrivateRelation', superclass_name: '::ActiveRecord::Relation')
          private_relation.create_include('::TypedRelation')
          private_relation.create_type_variable('Elem', type: 'type_member', fixed: klass.fully_qualified_name)

          private_relation_group_chain = klass.create_class('PrivateRelationGroupChain',
                                                            superclass_name: 'PrivateRelation',)
          private_relation_group_chain.create_include('::TypedRelation::GroupChain')
          private_relation_group_chain.create_type_variable('Elem', type:  'type_member',
                                                                    fixed: klass.fully_qualified_name,)

          private_relation_where_chain = klass.create_class('PrivateRelationWhereChain', superclass_name: '::ActiveRecord::QueryMethods::WhereChain')
          private_relation_where_chain.create_include('::TypedRelation::WhereChain')
          private_relation_where_chain.create_type_variable('Elem', type:  'type_member',
                                                                    fixed: klass.fully_qualified_name,)

          private_association_relation = klass.create_class('PrivateAssociationRelation', superclass_name: '::ActiveRecord::AssociationRelation')
          private_association_relation.create_include('::TypedAssociation::Relation')
          private_association_relation.create_type_variable('Elem', type:  'type_member',
                                                                    fixed: klass.fully_qualified_name,)

          private_relation_group_chain = klass.create_class('PrivateAssociationRelationGroupChain',
                                                            superclass_name: 'PrivateAssociationRelation',)
          private_relation_group_chain.create_include('::TypedAssociation::Relation::GroupChain')
          private_relation_group_chain.create_type_variable('Elem', type:  'type_member',
                                                                    fixed: klass.fully_qualified_name,)

          private_relation_where_chain = klass.create_class('PrivateAssociationRelationWhereChain',
                                                            superclass_name: '::ActiveRecord::QueryMethods::WhereChain',)
          private_relation_where_chain.create_include('::TypedAssociation::Relation::WhereChain')
          private_relation_where_chain.create_type_variable('Elem', type:  'type_member',
                                                                    fixed: klass.fully_qualified_name,)

          private_collection_proxy = klass.create_class('PrivateCollectionProxy', superclass_name: '::ActiveRecord::Associations::CollectionProxy')
          private_collection_proxy.create_include('::TypedAssociation::CollectionProxy')
          private_collection_proxy.create_type_variable('Elem', type: 'type_member', fixed: klass.fully_qualified_name)
        end
      end

    end
  end
end
