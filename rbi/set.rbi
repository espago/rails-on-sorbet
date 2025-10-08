# typed: true

class Set
  # sig { params(object: T.anything).returns(T::Boolean) }
  # def exclude?(object); end

  # Returns true if the set contains the given object.
  # Note that `include?` and `member?` do not test
  # member
  # equality
  # using `==` as do other Enumerables.
  # See also
  # [`Enumerable#include?`](https://docs.ruby-lang.org/en/2.7.0/Enumerable.html#method-i-include-3F)
  #
  # Also aliased as:
  # [`member?`](https://docs.ruby-lang.org/en/2.7.0/Set.html#method-i-member-3F),
  # [`===`](https://docs.ruby-lang.org/en/2.7.0/Set.html#method-i-3D-3D-3D)
  sig do
    params(
        o: T.anything,
    )
    .returns(T::Boolean)
  end
  def include?(o); end
end
