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
