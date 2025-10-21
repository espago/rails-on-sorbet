# typed: false
# frozen_string_literal: true

require 'action_controller'
require 'active_support'

module Map
  extend T::Generic

  # Map type for API params.
  Params = T.type_alias { Map[T.any(String, Symbol), T.untyped] }
end

def Map(val) = val # rubocop:disable Style/TopLevelMethodDefinition,Naming/MethodName
