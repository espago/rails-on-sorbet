# typed: true
# frozen_string_literal: true

# Represents time-like types
Timelike = T.type_alias { T.any(Time, DateTime, ActiveSupport::TimeWithZone) }
