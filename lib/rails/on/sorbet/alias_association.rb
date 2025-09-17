# typed: true
# frozen_string_literal: true

module Rails::On::Sorbet
  # @requires_ancestor: singleton(ActiveRecord::Base)
  module AliasAssociation
    # Create an alias for an association like `belongs_to` or `has_one`
    #
    #     class Foo < ApplicationRecord
    #       belongs_to :user
    #       alias_association :owner, :user
    #     end
    #     f = Foo.last
    #     f.owner == f.user #=> true
    #
    #: (Symbol, Symbol) -> void
    def alias_association(alias_name, target_name)
      @_alias_association_definitions ||= []
      @_alias_association_definitions << [alias_name, target_name]

      class_eval(<<~RUBY, __FILE__, __LINE__ + 1)
        def #{alias_name}             # def service
          self.#{target_name}         #   self.merchant_service
        end                           # end

        def #{alias_name}=(val)       # def service=(val)
          self.#{target_name} = val   #   self.merchant_service = val
        end                           # end
      RUBY
    end

    #: -> Array[[Symbol, Symbol]]
    def _alias_association_definitions
      @_alias_association_definitions || []
    end
  end
end

require 'active_record'
require 'active_record/base'

module ActiveRecord
  class Base # rubocop:disable Style/StaticClass
    extend Rails::On::Sorbet::AliasAssociation
  end
end
