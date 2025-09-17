# typed: true

class Numeric
  # No number is blank:
  #
  #   1.blank? # => false
  #   0.blank? # => false
  #
  # @return [false]
  #
  # source://activesupport//lib/active_support/core_ext/object/blank.rb#141
  #: -> FalseClass
  def blank?; end

  # Enables the use of byte calculations and declarations, like 45.bytes + 2.6.megabytes
  #
  #   2.bytes # => 2
  #
  # source://activesupport//lib/active_support/core_ext/numeric/bytes.rb#15
  #: -> self
  def byte; end

  # Enables the use of byte calculations and declarations, like 45.bytes + 2.6.megabytes
  #
  #   2.bytes # => 2
  #
  # source://activesupport//lib/active_support/core_ext/numeric/bytes.rb#15
  #: -> self
  def bytes; end

  # Returns a Duration instance matching the number of days provided.
  #
  #   2.days # => 2 days
  #
  # source://activesupport//lib/active_support/core_ext/numeric/time.rb#37
  #: -> ActiveSupport::Duration
  def day; end

  # Returns a Duration instance matching the number of days provided.
  #
  #   2.days # => 2 days
  #
  # source://activesupport//lib/active_support/core_ext/numeric/time.rb#37
  #: -> ActiveSupport::Duration
  def days; end

  # Returns the number of bytes equivalent to the exabytes provided.
  #
  #   2.exabytes # => 2_305_843_009_213_693_952
  #
  # source://activesupport//lib/active_support/core_ext/numeric/bytes.rb#63
  #: -> self
  def exabyte; end

  # Returns the number of bytes equivalent to the exabytes provided.
  #
  #   2.exabytes # => 2_305_843_009_213_693_952
  #
  # source://activesupport//lib/active_support/core_ext/numeric/bytes.rb#63
  #: -> self
  def exabytes; end

  # Returns a Duration instance matching the number of fortnights provided.
  #
  #   2.fortnights # => 4 weeks
  #
  # source://activesupport//lib/active_support/core_ext/numeric/time.rb#53
  #: -> ActiveSupport::Duration
  def fortnight; end

  # Returns a Duration instance matching the number of fortnights provided.
  #
  #   2.fortnights # => 4 weeks
  #
  # source://activesupport//lib/active_support/core_ext/numeric/time.rb#53
  #: -> ActiveSupport::Duration
  def fortnights; end

  # Returns the number of bytes equivalent to the gigabytes provided.
  #
  #   2.gigabytes # => 2_147_483_648
  #
  # source://activesupport//lib/active_support/core_ext/numeric/bytes.rb#39
  #: -> self
  def gigabyte; end

  # Returns the number of bytes equivalent to the gigabytes provided.
  #
  #   2.gigabytes # => 2_147_483_648
  #
  # source://activesupport//lib/active_support/core_ext/numeric/bytes.rb#39
  #: -> self
  def gigabytes; end

  # Returns a Duration instance matching the number of hours provided.
  #
  #   2.hours # => 2 hours
  #
  # source://activesupport//lib/active_support/core_ext/numeric/time.rb#29
  #: -> ActiveSupport::Duration
  def hour; end

  # Returns a Duration instance matching the number of hours provided.
  #
  #   2.hours # => 2 hours
  #
  # source://activesupport//lib/active_support/core_ext/numeric/time.rb#29
  #: -> ActiveSupport::Duration
  def hours; end

  # @return [Boolean]
  #
  # source://activesupport//lib/active_support/core_ext/string/output_safety.rb#13
  #: -> bool
  def html_safe?; end

  # Returns the number of milliseconds equivalent to the seconds provided.
  # Used with the standard time durations.
  #
  #   2.in_milliseconds # => 2000
  #   1.hour.in_milliseconds # => 3600000
  #
  # source://activesupport//lib/active_support/core_ext/numeric/time.rb#63
  #: -> self
  def in_milliseconds; end

  # Returns the number of bytes equivalent to the kilobytes provided.
  #
  #   2.kilobytes # => 2048
  #
  # source://activesupport//lib/active_support/core_ext/numeric/bytes.rb#23
  #: -> self
  def kilobyte; end

  # Returns the number of bytes equivalent to the kilobytes provided.
  #
  #   2.kilobytes # => 2048
  #
  # source://activesupport//lib/active_support/core_ext/numeric/bytes.rb#23
  #: -> self
  def kilobytes; end

  # Returns the number of bytes equivalent to the megabytes provided.
  #
  #   2.megabytes # => 2_097_152
  #
  # source://activesupport//lib/active_support/core_ext/numeric/bytes.rb#31
  #: -> self
  def megabyte; end

  # Returns the number of bytes equivalent to the megabytes provided.
  #
  #   2.megabytes # => 2_097_152
  #
  # source://activesupport//lib/active_support/core_ext/numeric/bytes.rb#31
  #: -> self
  def megabytes; end

  # Returns a Duration instance matching the number of minutes provided.
  #
  #   2.minutes # => 2 minutes
  #
  # source://activesupport//lib/active_support/core_ext/numeric/time.rb#21
  #: -> ActiveSupport::Duration
  def minute; end

  # Returns a Duration instance matching the number of minutes provided.
  #
  #   2.minutes # => 2 minutes
  #
  # source://activesupport//lib/active_support/core_ext/numeric/time.rb#21
  #: -> ActiveSupport::Duration
  def minutes; end

  # Returns the number of bytes equivalent to the petabytes provided.
  #
  #   2.petabytes # => 2_251_799_813_685_248
  #
  # source://activesupport//lib/active_support/core_ext/numeric/bytes.rb#55
  #: -> self
  def petabyte; end

  # Returns the number of bytes equivalent to the petabytes provided.
  #
  #   2.petabytes # => 2_251_799_813_685_248
  #
  # source://activesupport//lib/active_support/core_ext/numeric/bytes.rb#55
  #: -> self
  def petabytes; end

  # Returns a Duration instance matching the number of seconds provided.
  #
  #   2.seconds # => 2 seconds
  #
  # source://activesupport//lib/active_support/core_ext/numeric/time.rb#13
  #: -> ActiveSupport::Duration
  def second; end

  # Returns a Duration instance matching the number of seconds provided.
  #
  #   2.seconds # => 2 seconds
  #
  # source://activesupport//lib/active_support/core_ext/numeric/time.rb#13
  #: -> ActiveSupport::Duration
  def seconds; end

  # Returns the number of bytes equivalent to the terabytes provided.
  #
  #   2.terabytes # => 2_199_023_255_552
  #
  # source://activesupport//lib/active_support/core_ext/numeric/bytes.rb#47
  #: -> self
  def terabyte; end

  # Returns the number of bytes equivalent to the terabytes provided.
  #
  #   2.terabytes # => 2_199_023_255_552
  #
  # source://activesupport//lib/active_support/core_ext/numeric/bytes.rb#47
  #: -> self
  def terabytes; end

  # Returns a Duration instance matching the number of weeks provided.
  #
  #   2.weeks # => 2 weeks
  #
  # source://activesupport//lib/active_support/core_ext/numeric/time.rb#45
  #: -> ActiveSupport::Duration
  def week; end

  # Returns a Duration instance matching the number of weeks provided.
  #
  #   2.weeks # => 2 weeks
  #
  # source://activesupport//lib/active_support/core_ext/numeric/time.rb#45
  #: -> ActiveSupport::Duration
  def weeks; end

  # Returns the number of bytes equivalent to the zettabytes provided.
  #
  #   2.zettabytes # => 2_361_183_241_434_822_606_848
  #
  # source://activesupport//lib/active_support/core_ext/numeric/bytes.rb#71
  #: -> self
  def zettabyte; end

  # Returns the number of bytes equivalent to the zettabytes provided.
  #
  #   2.zettabytes # => 2_361_183_241_434_822_606_848
  #
  # source://activesupport//lib/active_support/core_ext/numeric/bytes.rb#71
  #: -> self
  def zettabytes; end
end

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

class DateTime
  class << self
    #: (*untyped) -> instance
    def now(*arg0); end

    #: (*untyped) -> instance
    def parse(*arg0); end
  end
end

class ActionController::TestCase
  module GeneratedPathHelpersModule; end
  include GeneratedPathHelpersModule

  module GeneratedUrlHelpersModule; end
  include GeneratedUrlHelpersModule
end
