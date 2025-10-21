# frozen_string_literal: true

require 'sorbet-runtime'
require_relative 'sorbet/version'

module Rails
  module On
    # Main module of the `rails-on-sorbet` gem
    module Sorbet
    end
  end
end

require_relative 'sorbet/active_record_serializer'
require_relative 'sorbet/alias_association'
require_relative 'sorbet/current_attributes'
require_relative 'sorbet/map'
require_relative 'sorbet/timelike'
require_relative 'sorbet/typed_relation'
