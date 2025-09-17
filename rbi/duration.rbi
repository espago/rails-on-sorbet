# typed: true

# = Active Support \Duration
#
# Provides accurate date and time measurements using Date#advance and
# Time#advance, respectively. It mainly supports the methods on Numeric.
#
#   1.month.ago       # equivalent to Time.now.advance(months: -1)
#
# source://activesupport//lib/active_support/duration.rb#14
class ActiveSupport::Duration
  # @return [Duration] a new instance of Duration
  #
  # source://activesupport//lib/active_support/duration.rb#224
  def initialize(value, parts, variable = T.unsafe(nil)); end

  # Returns the modulo of this Duration by another Duration or Numeric.
  # Numeric values are treated as seconds.
  #
  # source://activesupport//lib/active_support/duration.rb#307
  #: (ActiveSupport::Duration | Numeric) -> ActiveSupport::Duration
  def %(other); end

  # Multiplies this Duration by a Numeric and returns a new Duration.
  #
  # source://activesupport//lib/active_support/duration.rb#282
  #: (ActiveSupport::Duration | Numeric) -> ActiveSupport::Duration
  def *(other); end

  # Adds another Duration or a Numeric to this Duration. Numeric values
  # are treated as seconds.
  #
  # source://activesupport//lib/active_support/duration.rb#263
  #: (ActiveSupport::Duration | Numeric) -> ActiveSupport::Duration
  def +(other); end

  # source://activesupport//lib/active_support/duration.rb#321
  #: -> self
  def +@; end

  # Subtracts another Duration or a Numeric from this Duration. Numeric
  # values are treated as seconds.
  #
  # source://activesupport//lib/active_support/duration.rb#277
  #: (ActiveSupport::Duration | Numeric) -> ActiveSupport::Duration
  def -(other); end

  # source://activesupport//lib/active_support/duration.rb#317
  #: -> self
  def -@; end

  # Divides this Duration by a Numeric and returns a new Duration.
  #
  # source://activesupport//lib/active_support/duration.rb#293
  #: (ActiveSupport::Duration | Numeric) -> ActiveSupport::Duration
  def /(other); end

  # Compares one Duration with another or a Numeric to this Duration.
  # Numeric values are treated as seconds.
  #
  # source://activesupport//lib/active_support/duration.rb#253
  #: (ActiveSupport::Duration | Numeric) -> Integer
  def <=>(other); end

  #: (ActiveSupport::Duration | Numeric) -> bool
  def <(other); end
  #: (ActiveSupport::Duration | Numeric) -> bool
  def <=(other); end
  #: (ActiveSupport::Duration | Numeric) -> bool
  def >(other); end
  #: (ActiveSupport::Duration | Numeric) -> bool
  def >=(other); end

  # Returns +true+ if +other+ is also a Duration instance with the
  # same +value+, or if <tt>other == value</tt>.
  #
  # source://activesupport//lib/active_support/duration.rb#336
  #: (top other) -> bool
  def ==(other); end

  # source://activesupport//lib/active_support/duration.rb#476
  def _parts; end

  # Calculates a new Time or Date that is as far in the future
  # as this Duration represents.
  #
  # source://activesupport//lib/active_support/duration.rb#431
  #
  #: [D] (?D & Timelike) -> (D & Timelike)
  #: -> ActiveSupport::TimeWithZone
  def after(time = T.unsafe(nil)); end

  # Calculates a new Time or Date that is as far in the past
  # as this Duration represents.
  #
  # source://activesupport//lib/active_support/duration.rb#439
  #
  #: [D] (?D & Timelike) -> (D & Timelike)
  #: -> ActiveSupport::TimeWithZone
  def ago(time = T.unsafe(nil)); end

  # source://activesupport//lib/active_support/duration.rb#454
  #: (?T::Hash[Symbol, top]?) -> Integer
  def as_json(options = T.unsafe(nil)); end

  # Calculates a new Time or Date that is as far in the past
  # as this Duration represents.
  #
  # source://activesupport//lib/active_support/duration.rb#439
  #
  #: [D] (?D & Timelike) -> (D & Timelike)
  #: -> ActiveSupport::TimeWithZone
  def before(time = T.unsafe(nil)); end

  # source://activesupport//lib/active_support/duration.rb#240
  def coerce(other); end

  # source://activesupport//lib/active_support/duration.rb#462
  def encode_with(coder); end

  # Returns +true+ if +other+ is also a Duration instance, which has the
  # same parts as this one.
  #
  # @return [Boolean]
  #
  # source://activesupport//lib/active_support/duration.rb#421
  #
  #: (top) -> bool
  def eql?(other); end

  # Calculates a new Time or Date that is as far in the future
  # as this Duration represents.
  #
  # source://activesupport//lib/active_support/duration.rb#431
  #
  #: [D] (?D & Timelike) -> (D & Timelike)
  #: -> ActiveSupport::TimeWithZone
  def from_now(time = T.unsafe(nil)); end

  # source://activesupport//lib/active_support/duration.rb#425
  #
  #: -> Integer
  def hash; end

  # Returns the amount of days a duration covers as a float
  #
  #   12.hours.in_days # => 0.5
  #
  # source://activesupport//lib/active_support/duration.rb#394
  #
  #: -> Float
  def in_days; end

  # Returns the amount of hours a duration covers as a float
  #
  #   1.day.in_hours # => 24.0
  #
  # source://activesupport//lib/active_support/duration.rb#387
  #
  #: -> Float
  def in_hours; end

  # Returns the amount of minutes a duration covers as a float
  #
  #   1.day.in_minutes # => 1440.0
  #
  # source://activesupport//lib/active_support/duration.rb#380
  def in_minutes; end

  # Returns the amount of months a duration covers as a float
  #
  #   9.weeks.in_months # => 2.07
  #
  # source://activesupport//lib/active_support/duration.rb#408
  #
  #: -> Float
  def in_months; end

  # Returns the number of seconds that this Duration represents.
  #
  #   1.minute.to_i   # => 60
  #   1.hour.to_i     # => 3600
  #   1.day.to_i      # => 86400
  #
  # Note that this conversion makes some assumptions about the
  # duration of some periods, e.g. months are always 1/12 of year
  # and years are 365.2425 days:
  #
  #   # equivalent to (1.year / 12).to_i
  #   1.month.to_i    # => 2629746
  #
  #   # equivalent to 365.2425.days.to_i
  #   1.year.to_i     # => 31556952
  #
  # In such cases, Ruby's core
  # Date[https://ruby-doc.org/stdlib/libdoc/date/rdoc/Date.html] and
  # Time[https://ruby-doc.org/stdlib/libdoc/time/rdoc/Time.html] should be used for precision
  # date and time arithmetic.
  #
  # source://activesupport//lib/active_support/duration.rb#372
  #
  #: -> Integer
  def in_seconds; end

  # Returns the amount of weeks a duration covers as a float
  #
  #   2.months.in_weeks # => 8.696
  #
  # source://activesupport//lib/active_support/duration.rb#401
  #
  #: -> Float
  def in_weeks; end

  # Returns the amount of years a duration covers as a float
  #
  #   30.days.in_years # => 0.082
  #
  # source://activesupport//lib/active_support/duration.rb#415
  #
  #: -> Float
  def in_years; end

  # source://activesupport//lib/active_support/duration.rb#458
  def init_with(coder); end

  # source://activesupport//lib/active_support/duration.rb#445
  #
  #: -> String
  def inspect; end

  # @return [Boolean]
  #
  # source://activesupport//lib/active_support/duration.rb#330
  #
  #: (Module) -> bool
  def instance_of?(klass); end

  # @return [Boolean]
  #
  # source://activesupport//lib/active_support/duration.rb#325
  #
  #: (Module) -> bool
  def is_a?(klass); end

  # Build ISO 8601 Duration string for this duration.
  # The +precision+ parameter can be used to limit seconds' precision of duration.
  #
  # source://activesupport//lib/active_support/duration.rb#468
  #
  #: (?precision: top) -> String
  def iso8601(precision: T.unsafe(nil)); end

  # @return [Boolean]
  #
  # source://activesupport//lib/active_support/duration.rb#325
  #
  #: (Module) -> bool
  def kind_of?(klass); end

  # Returns a copy of the parts hash that defines the duration
  #
  # source://activesupport//lib/active_support/duration.rb#236
  #
  #: -> Hash[Symbol, Numeric]
  def parts; end

  # Calculates a new Time or Date that is as far in the future
  # as this Duration represents.
  #
  # source://activesupport//lib/active_support/duration.rb#431
  #
  #: [D] (?D & Timelike) -> (D & Timelike)
  #: -> ActiveSupport::TimeWithZone
  def since(time = T.unsafe(nil)); end

  # Returns the number of seconds that this Duration represents.
  #
  #   1.minute.to_i   # => 60
  #   1.hour.to_i     # => 3600
  #   1.day.to_i      # => 86400
  #
  # Note that this conversion makes some assumptions about the
  # duration of some periods, e.g. months are always 1/12 of year
  # and years are 365.2425 days:
  #
  #   # equivalent to (1.year / 12).to_i
  #   1.month.to_i    # => 2629746
  #
  #   # equivalent to 365.2425.days.to_i
  #   1.year.to_i     # => 31556952
  #
  # In such cases, Ruby's core
  # Date[https://ruby-doc.org/stdlib/libdoc/date/rdoc/Date.html] and
  # Time[https://ruby-doc.org/stdlib/libdoc/time/rdoc/Time.html] should be used for precision
  # date and time arithmetic.
  #
  # source://activesupport//lib/active_support/duration.rb#372
  #
  #: -> Integer
  def to_i; end

  # Returns the amount of seconds a duration covers as a string.
  # For more information check to_i method.
  #
  #   1.day.to_s # => "86400"
  #
  # source://activesupport//lib/active_support/duration.rb#348
  #
  #: -> String
  def to_s; end

  # Calculates a new Time or Date that is as far in the past
  # as this Duration represents.
  #
  # source://activesupport//lib/active_support/duration.rb#439
  #
  #: [D] (?D & Timelike) -> (D & Timelike)
  #: -> ActiveSupport::TimeWithZone
  def until(time = T.unsafe(nil)); end

  # Returns the value of attribute value.
  #
  # source://activesupport//lib/active_support/duration.rb#133
  #
  #: -> Numeric
  def value; end
end
