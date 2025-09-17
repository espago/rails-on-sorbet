# typed: false
# frozen_string_literal: true

require 'action_controller'
require 'active_support'

module Map
  extend T::Generic
end

def Map(val) = val # rubocop:disable Style/TopLevelMethodDefinition,Naming/MethodName

#: [K = String, V = untyped]
class ActionController::Parameters
  include Map
end

#: [K = String, V = untyped]
class ActiveSupport::HashWithIndifferentAccess
  include Map
end
