# typed: false

class Hash
  sig { params(object: T.anything).returns(T::Boolean) }
  def exclude?(object); end

  # Returns `true` if the given key is present in *hsh*.
  #
  # ```ruby
  # h = { "a" => 100, "b" => 200 }
  # h.has_key?("a")   #=> true
  # h.has_key?("z")   #=> false
  # ```
  #
  # Note that
  # [`include?`](https://docs.ruby-lang.org/en/2.7.0/Hash.html#method-i-include-3F)
  # and
  # [`member?`](https://docs.ruby-lang.org/en/2.7.0/Hash.html#method-i-member-3F)
  # do not test member equality using `==` as do other Enumerables.
  #
  # See also
  # [`Enumerable#include?`](https://docs.ruby-lang.org/en/2.7.0/Enumerable.html#method-i-include-3F)
  sig do
    params(
        arg0: T.anything,
    )
    .returns(T::Boolean)
  end
  def include?(arg0); end

  sig do
    params(
        arg0: T.anything,
    )
    .returns(T::Boolean)
  end
  def key?(arg0); end

  # Element Reference---Retrieves the *value* object corresponding to the *key*
  # object. If not found, returns the default value (see
  # [`Hash::new`](https://docs.ruby-lang.org/en/2.7.0/Hash.html#method-c-new)
  # for details).
  #
  # ```ruby
  # h = { "a" => 100, "b" => 200 }
  # h["a"]   #=> 100
  # h["c"]   #=> nil
  # ```
  sig do
    params(
        arg0: T.anything,
    )
    .returns(T.nilable(V))
  end
  def [](arg0); end

  # Returns `true` if the given value is present for some key in *hsh*.
  #
  # ```ruby
  # h = { "a" => 100, "b" => 200 }
  # h.value?(100)   #=> true
  # h.value?(999)   #=> false
  # ```
  sig do
    params(
        arg0: T.anything,
    )
    .returns(T::Boolean)
  end
  def value?(arg0); end
end
