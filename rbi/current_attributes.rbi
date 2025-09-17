# typed: true

class ActiveSupport::CurrentAttributes
  # Declares one or more attributes that will be given both class and instance accessor methods.
  #
  # ==== Options
  #
  # * <tt>:default</tt> - The default value for the attributes. If the value
  # is a proc or lambda, it will be called whenever an instance is
  # constructed. Otherwise, the value will be duplicated with +#dup+.
  # Default values are re-assigned when the attributes are reset.
  #
  # source://activesupport//lib/active_support/current_attributes.rb#114
  #
  #: (*Symbol, ?type: untyped, ?doc: String?, ?default: untyped) -> void
  def attribute(*names, type: nil, doc: nil, default: ::ActiveSupport::CurrentAttributes::NOT_SET); end
end
