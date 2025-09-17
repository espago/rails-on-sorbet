# typed: false
# frozen_string_literal: true

require 'action_controller'
require 'active_support'

module Map
  extend T::Generic
end

def Map(val) = val # rubocop:disable Style/TopLevelMethodDefinition,Naming/MethodName
