# typed: false

#: [K, V] (Hash[K, V]) -> Map[K, V]
#: (ActionController::Parameters | ActiveSupport::HashWithIndifferentAccess) -> Map[String | Symbol, untyped]
def Map(val); end

# `Map` represents a hash-like object
# Use the `Map` type in a signature.
#
#     #: (Map[Symbol | String, Integer]) -> void
#     def foo(m)
#       m["foo"] #=> Integer?
#     end
#
#     hash = { "foo" => 4 } #: Hash[String, Integer]
#     m = Map(hash) #=> Map[Symbol | String, Integer]
#     foo(m) # OK
#
#     hash = { "foo" => 4 }.with_indifferent_access # => ActiveSupport::HashWithIndifferentAccess
#     m = Map(hash) #=> Map[Symbol | String, untyped]
#     foo(m) # OK
#
#     params = ActionController::Parameters.new # => ActionController::Parameters
#     m = Map(params) #=> Map[Symbol | String, untyped]
#     foo(m) # OK
#
# Cast a `Hash`, `ActionController::Parameters` or `ActiveSupport::HashWithIndifferentAccess`
# to a `Map`. The `Map` type defines common methods shared between these hash-like types.
#
# Due to current Sorbet limitations, hash-like types cannot directly implement the `Map` interface.
# The `Map` method provides a way to cast between hash-like types and `Map` to enable type-safe usage.
#
# @requires_ancestor: Object
# @abstract
#: [out K, out V]
module Map
  extend T::Generic

  # Returns a new array populated with the keys from this hash. See also
  # [`Hash#values`](https://docs.ruby-lang.org/en/2.7.0/Hash.html#method-i-values).
  #
  # ```ruby
  # h = { "a" => 100, "b" => 200, "c" => 300, "d" => 400 }
  # h.keys   #=> ["a", "b", "c", "d"]
  # ```
  sig {abstract.returns(T::Array[K])}
  def keys(); end

  # Returns `true` if *hsh* contains no key-value pairs.
  #
  # ```ruby
  # {}.empty?   #=> true
  # ```
  sig {abstract.returns(T::Boolean)}
  def empty?(); end

  sig { abstract.params(object: T.anything).returns(T::Boolean) }
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
    abstract.params(
        arg0: T.anything,
    )
    .returns(T::Boolean)
  end
  def include?(arg0); end

  sig { abstract.params(options: T.untyped).returns(T.untyped) }
  def as_json(*options); end

  # Alias for:
  # [`inspect`](https://docs.ruby-lang.org/en/2.7.0/Hash.html#method-i-inspect)
  sig {abstract.returns(String)}
  def to_s(); end

  # Calls *block* once for each key in *hsh*, passing the key as a parameter.
  #
  # If no block is given, an enumerator is returned instead.
  #
  # ```ruby
  # h = { "a" => 100, "b" => 200 }
  # h.each_key {|key| puts key }
  # ```
  #
  # *produces:*
  #
  # ```ruby
  # a
  # b
  # ```
  sig do
    abstract.params(
        blk: T.proc.params(arg0: K).returns(BasicObject),
    )
    .returns(T::Hash[K, V])
  end
  sig {abstract.returns(T::Enumerator[K])}
  def each_key(&blk); end

  # Calls *block* once for each key in *hsh*, passing the key-value pair as
  # parameters.
  #
  # If no block is given, an enumerator is returned instead.
  #
  # ```ruby
  # h = { "a" => 100, "b" => 200 }
  # h.each {|key, value| puts "#{key} is #{value}" }
  # ```
  #
  # *produces:*
  #
  # ```ruby
  # a is 100
  # b is 200
  # ```
  sig do
    abstract.params(
        blk: T.proc.params(arg0: [K, V]).returns(BasicObject),
    )
    .returns(T::Hash[K, V])
  end
  sig {returns(T::Enumerator[[K, V]])}
  def each(&blk); end

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
    abstract.params(
        arg0: K,
    )
    .returns(T::Boolean)
  end
  def has_key?(arg0); end

  sig do
    abstract.params(
        arg0: T.anything,
    )
    .returns(T::Boolean)
  end
  def key?(arg0); end

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
    abstract.params(
        arg0: K,
    )
    .returns(T::Boolean)
  end
  def member?(arg0); end

  # Equality---Two hashes are equal if they each contain the same number of keys
  # and if each key-value pair is equal to (according to Object#==) the
  # corresponding elements in the other hash.
  #
  # ```ruby
  # h1 = { "a" => 1, "c" => 2 }
  # h2 = { 7 => 35, "c" => 2, "a" => 1 }
  # h3 = { "a" => 1, "c" => 2, 7 => 35 }
  # h4 = { "a" => 1, "d" => 2, "f" => 35 }
  # h1 == h2   #=> false
  # h2 == h3   #=> true
  # h3 == h4   #=> false
  # ```
  #
  # The orders of each hashes are not compared.
  #
  # ```ruby
  # h1 = { "a" => 1, "c" => 2 }
  # h2 = { "c" => 2, "a" => 1 }
  # h1 == h2   #=> true
  # ```
  sig {abstract.params(_: T.untyped).returns(T::Boolean)}
  def ==(_); end

  sig {abstract.params(_: T.untyped).returns(T::Boolean)}
  def eql?(_); end

  sig { abstract.returns(Integer) }
  def hash; end

  # Returns `self`. If called on a subclass of
  # [`Hash`](https://docs.ruby-lang.org/en/2.7.0/Hash.html), converts the
  # receiver to a [`Hash`](https://docs.ruby-lang.org/en/2.7.0/Hash.html)
  # object.
  #
  # If a block is given, the results of the block on each pair of the receiver
  # will be used as pairs.
  sig do
    abstract.type_parameters(:A, :B)
      .params(
        blk: T.proc.params(arg0: K, arg1: V)
              .returns([T.type_parameter(:A), T.type_parameter(:B)])
      )
      .returns(T::Hash[T.type_parameter(:A), T.type_parameter(:B)])
  end
  sig {abstract.returns(T::Hash[K, V])}
  def to_h(&blk); end

  # Returns `self`. If called on a subclass of
  # [`Hash`](https://docs.ruby-lang.org/en/2.7.0/Hash.html), converts the
  # receiver to a [`Hash`](https://docs.ruby-lang.org/en/2.7.0/Hash.html)
  # object.
  #
  # If a block is given, the results of the block on each pair of the receiver
  # will be used as pairs.
  sig {abstract.returns(T::Hash[K, V])}
  def to_hash(); end

  # Returns a string representation of the receiver suitable for use as a URL
  # query string:
  #
  #   {name: 'David', nationality: 'Danish'}.to_query
  #   # => "name=David&nationality=Danish"
  #
  # An optional namespace can be passed to enclose key names:
  #
  #   {name: 'David', nationality: 'Danish'}.to_query('user')
  #   # => "user%5Bname%5D=David&user%5Bnationality%5D=Danish"
  #
  # The string pairs "key=value" that conform the query string
  # are sorted lexicographically in ascending order.
  #
  # source://activesupport//lib/active_support/core_ext/object/to_query.rb#75
  sig { abstract.params(namespace: T.untyped).returns(String) }
  def to_query(namespace = T.unsafe(nil)); end

  # Calls *block* once for each key in *hsh*, passing the key-value pair as
  # parameters.
  #
  # If no block is given, an enumerator is returned instead.
  #
  # ```ruby
  # h = { "a" => 100, "b" => 200 }
  # h.each {|key, value| puts "#{key} is #{value}" }
  # ```
  #
  # *produces:*
  #
  # ```ruby
  # a is 100
  # b is 200
  # ```
  sig do
    abstract.params(
        blk: T.proc.params(arg0: K, arg1: V).returns(BasicObject),
    )
    .returns(T::Hash[K, V])
  end
  sig {abstract.returns(T::Enumerator[[K, V]])}
  def each_pair(&blk); end

  # Calls *block* once for each key in *hsh*, passing the value as a parameter.
  #
  # If no block is given, an enumerator is returned instead.
  #
  # ```ruby
  # h = { "a" => 100, "b" => 200 }
  # h.each_value {|value| puts value }
  # ```
  #
  # *produces:*
  #
  # ```ruby
  # 100
  # 200
  # ```
  sig do
    abstract.params(
        blk: T.proc.params(arg0: V).returns(BasicObject),
    )
    .returns(T::Hash[K, V])
  end
  sig {abstract.returns(T::Enumerator[V])}
  def each_value(&blk); end

  # Returns a new array populated with the values from *hsh*. See also
  # [`Hash#keys`](https://docs.ruby-lang.org/en/2.7.0/Hash.html#method-i-keys).
  #
  # ```ruby
  # h = { "a" => 100, "b" => 200, "c" => 300 }
  # h.values   #=> [100, 200, 300]
  # ```
  sig {abstract.returns(T::Array[V])}
  def values(); end

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
    abstract.params(
        arg0: T.anything,
    )
    .returns(T.nilable(V))
  end
  def [](arg0); end

  # ## Element Assignment
  #
  # Associates the value given by `value` with the key given by `key`.
  #
  # ```ruby
  # h = { "a" => 100, "b" => 200 }
  # h["a"] = 9
  # h["c"] = 4
  # h   #=> {"a"=>9, "b"=>200, "c"=>4}
  # h.store("d", 42) #=> 42
  # h   #=> {"a"=>9, "b"=>200, "c"=>4, "d"=>42}
  # ```
  #
  # `key` should not have its value changed while it is in use as a key (an
  # `unfrozen String` passed as a key will be duplicated and frozen).
  #
  # ```ruby
  # a = "a"
  # b = "b".freeze
  # h = { a => 100, b => 200 }
  # h.key(100).equal? a #=> false
  # h.key(200).equal? b #=> true
  # ```
  sig do
    abstract.params(
        arg0: K,
        arg1: V,
    )
    .returns(V)
  end
  def []=(arg0, arg1); end

  # Returns a value from the hash for the given key. If the key can't be found,
  # there are several options: With no other arguments, it will raise a
  # [`KeyError`](https://docs.ruby-lang.org/en/2.7.0/KeyError.html) exception;
  # if *default* is given, then that will be returned; if the optional code
  # block is specified, then that will be run and its result returned.
  #
  # ```ruby
  # h = { "a" => 100, "b" => 200 }
  # h.fetch("a")                            #=> 100
  # h.fetch("z", "go fish")                 #=> "go fish"
  # h.fetch("z") { |el| "go fish, #{el}"}   #=> "go fish, z"
  # ```
  #
  # The following example shows that an exception is raised if the key is not
  # found and a default value is not supplied.
  #
  # ```ruby
  # h = { "a" => 100, "b" => 200 }
  # h.fetch("z")
  # ```
  #
  # *produces:*
  #
  # ```
  # prog.rb:2:in `fetch': key not found (KeyError)
  #  from prog.rb:2
  # ```
  sig do
    abstract.params(
        arg0: K,
    )
    .returns(V)
  end
  sig do
   abstract.type_parameters(:X).params(
      arg0: K,
      arg1: T.type_parameter(:X),
    )
    .returns(T.any(V, T.type_parameter(:X)))
  end
  sig do
   abstract.type_parameters(:X).params(
        arg0: K,
        blk: T.proc.params(arg0: K).returns(T.type_parameter(:X)),
    )
    .returns(T.any(V, T.type_parameter(:X)))
  end
  def fetch(arg0, arg1=T.unsafe(nil), &blk); end

  # Extracts the nested value specified by the sequence of *key* objects by
  # calling `dig` at each step, returning `nil` if any intermediate step is
  # `nil`.
  #
  # ```ruby
  # h = { foo: {bar: {baz: 1}}}
  #
  # h.dig(:foo, :bar, :baz)     #=> 1
  # h.dig(:foo, :zot, :xyz)     #=> nil
  #
  # g = { foo: [10, 11, 12] }
  # g.dig(:foo, 1)              #=> 11
  # g.dig(:foo, 1, 0)           #=> TypeError: Integer does not have #dig method
  # g.dig(:foo, :bar)           #=> TypeError: no implicit conversion of Symbol into Integer
  # ```
  sig do
    abstract.params(
      key: K,
      rest: T.untyped
    )
    .returns(T.untyped)
  end
  def dig(key, *rest); end

  # Returns a hash containing only the given keys and their values.
  #
  # ```ruby
  # h = { a: 100, b: 200, c: 300 }
  # h.slice(:a)           #=> {:a=>100}
  # h.slice(:b, :c, :d)   #=> {:b=>200, :c=>300}
  # ```
  sig do
    abstract.params(
        arg0: K,
    )
    .returns(T::Hash[K, V])
  end
  def slice(*arg0); end

  # Replaces the hash with only the given keys.
  # Returns a hash containing the removed key/value pairs.
  #
  #   hash = { a: 1, b: 2, c: 3, d: 4 }
  #   hash.slice!(:a, :b)  # => {:c=>3, :d=>4}
  #   hash                 # => {:a=>1, :b=>2}
  #
  # source://activesupport//lib/active_support/core_ext/hash/slice.rb#10
  sig do
    abstract.params(
        keys: K,
    )
    .returns(T::Hash[K, V])
  end
  def slice!(*keys); end

  # Returns a new Hash excluding entries for the given keys.
  # [`Hash#except`](https://ruby-doc.org/core-3.0.0/Hash.html#method-i-except)
  #
  # ```ruby
  # h = { a: 100, b: 200, c: 300 }
  # h.except(:a)          #=> {:b=>200, :c=>300}
  # ```
  sig do
    abstract.params(
        args: K,
    )
    .returns(T::Hash[K, V])
  end
  def except(*args); end

  # Removes and returns the key/value pairs matching the given keys.
  #
  #   hash = { a: 1, b: 2, c: 3, d: 4 }
  #   hash.extract!(:a, :b) # => {:a=>1, :b=>2}
  #   hash                  # => {:c=>3, :d=>4}
  #
  # source://activesupport//lib/active_support/core_ext/hash/slice.rb#24
  def extract!(*keys); end

  # Returns a new hash with the results of running the block once for every
  # value. This method does not change the keys.
  #
  # ```ruby
  # h = { a: 1, b: 2, c: 3 }
  # h.transform_values {|v| v * v + 1 }  #=> { a: 2, b: 5, c: 10 }
  # h.transform_values(&:to_s)           #=> { a: "1", b: "2", c: "3" }
  # h.transform_values.with_index {|v, i| "#{v}.#{i}" }
  #                                      #=> { a: "1.0", b: "2.1", c: "3.2" }
  # ```
  #
  # If no block is given, an enumerator is returned instead.
  sig do
    abstract.type_parameters(:A).params(
      blk: T.proc.params(arg0: V).returns(T.type_parameter(:A))
    )
                       .returns(T::Hash[K, T.type_parameter(:A)])
  end
  sig do
    abstract.returns(T::Enumerator[V])
  end
  def transform_values(&blk); end

  # Invokes the given block once for each value in *hsh*, replacing it with the
  # new value returned by the block, and then returns *hsh*. This method does
  # not change the keys.
  #
  # ```ruby
  # h = { a: 1, b: 2, c: 3 }
  # h.transform_values! {|v| v * v + 1 }  #=> { a: 2, b: 5, c: 10 }
  # h.transform_values!(&:to_s)           #=> { a: "2", b: "5", c: "10" }
  # h.transform_values!.with_index {|v, i| "#{v}.#{i}" }
  #                                       #=> { a: "2.0", b: "5.1", c: "10.2" }
  # ```
  #
  # If no block is given, an enumerator is returned instead.
  sig do
    abstract.type_parameters(:A).params(
      blk: T.proc.params(arg0: V).returns(T.type_parameter(:A))
    )
                       .returns(T::Hash[K, T.type_parameter(:A)])
  end
  sig do
    abstract.returns(T::Enumerator[V])
  end
  def transform_values!(&blk); end

    # Returns a new hash with the results of running the block once for every key.
  #
  # An optional hash argument can be provided to map keys to new keys. Any key
  # not given will be mapped using the provided block, or remain the same if no
  # block is given.
  #
  # This method does not change the values.
  #
  # ```ruby
  # h = { a: 1, b: 2, c: 3 }
  # h.transform_keys {|k| k.to_s }  #=> { "a" => 1, "b" => 2, "c" => 3 }
  # h.transform_keys(&:to_s)        #=> { "a" => 1, "b" => 2, "c" => 3 }
  # h.transform_keys.with_index {|k, i| "#{k}.#{i}" }
  #                                 #=> { "a.0" => 1, "b.1" => 2, "c.2" => 3 }
  # h.transform_keys({ a: "a", b: "b" }) #=> { "a" => 1, "b" => 2, c: 3 }
  # ```
  #
  # If no block is given, an enumerator is returned instead.
  sig do
    abstract.type_parameters(:A).params(
      hash2: T.nilable(T::Hash[T.type_parameter(:A), V]),
      blk: T.proc.params(arg0: K).returns(T.type_parameter(:A))
    )
    .returns(T::Hash[T.type_parameter(:A), V])
  end
  sig do
    abstract.type_parameters(:A).params(
      hash2: T::Hash[T.type_parameter(:A), V],
    )
    .returns(T::Hash[T.type_parameter(:A), V])
  end
  sig do
    abstract.returns(T::Enumerator[K])
  end
  def transform_keys(hash2=nil, &blk); end

  # Invokes the given block once for each key in *hsh*, replacing it with the
  # new key returned by the block, and then returns *hsh*. This method does not
  # change the values.
  #
  # An optional hash argument can be provided to map keys to new keys. Any key
  # not given will be mapped using the provided block, or remain the same if no
  # block is given.
  #
  # ```ruby
  # h = { a: 1, b: 2, c: 3 }
  # h.transform_keys! {|k| k.to_s }  #=> { "a" => 1, "b" => 2, "c" => 3 }
  # h.transform_keys!(&:to_sym)      #=> { a: 1, b: 2, c: 3 }
  # h.transform_keys!.with_index {|k, i| "#{k}.#{i}" }
  #                                  #=> { "a.0" => 1, "b.1" => 2, "c.2" => 3 }
  # h.transform_keys!({ a: "a", b: "b" }) #=> { "a" => 1, "b" => 2, c: 3 }
  # ```
  #
  # If no block is given, an enumerator is returned instead.
  sig do
    abstract.type_parameters(:A).params(
      hash2: T.nilable(T::Hash[T.type_parameter(:A), V]),
      blk: T.proc.params(arg0: K).returns(T.type_parameter(:A))
    )
    .returns(T::Hash[T.type_parameter(:A), V])
  end
  sig do
    abstract.type_parameters(:A).params(
      hash2: T::Hash[T.type_parameter(:A), V],
    )
    .returns(T::Hash[T.type_parameter(:A), V])
  end
  sig do
    abstract.returns(T::Enumerator[K])
  end
  def transform_keys!(hash2=nil, &blk); end

  # Returns a new hash with all keys converted by the block operation.
  # This includes the keys from the root hash and from all
  # nested hashes and arrays.
  #
  #   hash = { person: { name: 'Rob', age: '28' } }
  #
  #   hash.deep_transform_keys{ |key| key.to_s.upcase }
  #   # => {"PERSON"=>{"NAME"=>"Rob", "AGE"=>"28"}}
  #
  # source://activesupport//lib/active_support/core_ext/hash/keys.rb#65
  sig do
    abstract.type_parameters(:A).params(
      block: T.proc.params(arg0: K).returns(T.type_parameter(:A))
    )
    .returns(T::Hash[T.type_parameter(:A), V])
  end
  sig do
    abstract.returns(T::Enumerator[K])
  end
  def deep_transform_keys(&block); end

  # Destructively converts all keys by using the block operation.
  # This includes the keys from the root hash and from all
  # nested hashes and arrays.
  #
  # source://activesupport//lib/active_support/core_ext/hash/keys.rb#72
  sig do
    abstract.type_parameters(:A).params(
      block: T.proc.params(arg0: K).returns(T.type_parameter(:A))
    )
    .returns(T::Hash[T.type_parameter(:A), V])
  end
  sig do
    abstract.returns(T::Enumerator[K])
  end
  def deep_transform_keys!(&block); end

  # Deletes the key-value pair and returns the value from *hsh* whose key is
  # equal to *key*. If the key is not found, it returns *nil*. If the optional
  # code block is given and the key is not found, pass in the key and return the
  # result of *block*.
  #
  # ```ruby
  # h = { "a" => 100, "b" => 200 }
  # h.delete("a")                              #=> 100
  # h.delete("z")                              #=> nil
  # h.delete("z") { |el| "#{el} not found" }   #=> "z not found"
  # ```
  sig do
    abstract.params(
        arg0: K,
    )
    .returns(T.nilable(V))
  end
  sig do
    abstract.type_parameters(:U).params(
        arg0: K,
        blk: T.proc.params(arg0: K).returns(T.type_parameter(:U)),
    )
    .returns(T.any(T.type_parameter(:U), V))
  end
  def delete(arg0, &blk); end

  # Returns a new hash consisting of entries for which the block returns true.
  #
  # If no block is given, an enumerator is returned instead.
  #
  # ```ruby
  # h = { "a" => 100, "b" => 200, "c" => 300 }
  # h.select {|k,v| k > "a"}  #=> {"b" => 200, "c" => 300}
  # h.select {|k,v| v < 200}  #=> {"a" => 100}
  # ```
  #
  # [`Hash#filter`](https://docs.ruby-lang.org/en/2.7.0/Hash.html#method-i-filter)
  # is an alias for
  # [`Hash#select`](https://docs.ruby-lang.org/en/2.7.0/Hash.html#method-i-select).
  sig do
    abstract.params(
        blk: T.proc.params(arg0: K, arg1: V).returns(BasicObject),
    )
    .returns(T::Hash[K, V])
  end
  sig {abstract.returns(T::Enumerator[[K, V]])}
  def select(&blk); end

  # Equivalent to
  # [`Hash#keep_if`](https://docs.ruby-lang.org/en/2.7.0/Hash.html#method-i-keep_if),
  # but returns `nil` if no changes were made.
  #
  # [`Hash#filter!`](https://docs.ruby-lang.org/en/2.7.0/Hash.html#method-i-filter-21)
  # is an alias for
  # [`Hash#select!`](https://docs.ruby-lang.org/en/2.7.0/Hash.html#method-i-select-21).
  sig do
    abstract.params(
        blk: T.proc.params(arg0: K, arg1: V).returns(BasicObject),
    )
    .returns(T::Hash[K, V])
  end
  def select!(&blk); end

  # Returns a new hash consisting of entries for which the block returns false.
  #
  # If no block is given, an enumerator is returned instead.
  #
  # ```ruby
  # h = { "a" => 100, "b" => 200, "c" => 300 }
  # h.reject {|k,v| k < "b"}  #=> {"b" => 200, "c" => 300}
  # h.reject {|k,v| v > 100}  #=> {"a" => 100}
  # ```
  sig {abstract.returns(T::Enumerator[[K, V]])}
  sig do
    abstract.params(
        blk: T.proc.params(arg0: K, arg1: V).returns(BasicObject),
    )
    .returns(T::Hash[K, V])
  end
  def reject(&blk); end

  # Equivalent to
  # [`Hash#delete_if`](https://docs.ruby-lang.org/en/2.7.0/Hash.html#method-i-delete_if),
  # but returns `nil` if no changes were made.
  sig do
    abstract.params(
        blk: T.proc.params(arg0: K, arg1: V).returns(BasicObject),
    )
    .returns(T::Hash[K, V])
  end
  def reject!(&blk); end

  # Returns a new hash with the nil values/key pairs removed
  #
  # ```ruby
  # h = { a: 1, b: false, c: nil }
  # h.compact     #=> { a: 1, b: false }
  # h             #=> { a: 1, b: false, c: nil }
  # ```
  sig { abstract.returns(Map[K, V]) }
  def compact; end

  # Removes all nil values from the hash. Returns nil if no changes were made,
  # otherwise returns the hash.
  #
  # ```ruby
  # h = { a: 1, b: false, c: nil }
  # h.compact!     #=> { a: 1, b: false }
  # ```
  sig { abstract.returns(Map[K, V]) }
  def compact!; end

  sig { abstract.returns(Map[K, V]) }
  def compact_blank; end
  sig { abstract.returns(Map[K, V]) }
  def compact_blank!; end

  # Returns `true` if the given value is present for some key in *hsh*.
  #
  # ```ruby
  # h = { "a" => 100, "b" => 200 }
  # h.value?(100)   #=> true
  # h.value?(999)   #=> false
  # ```
  sig do
    abstract.params(
        arg0: V,
    )
    .returns(T::Boolean)
  end
  def has_value?(arg0); end

  # Returns `true` if the given value is present for some key in *hsh*.
  #
  # ```ruby
  # h = { "a" => 100, "b" => 200 }
  # h.value?(100)   #=> true
  # h.value?(999)   #=> false
  # ```
  sig do
    abstract.params(
        arg0: T.anything,
    )
    .returns(T::Boolean)
  end
  def value?(arg0); end

  # Return an array containing the values associated with the given keys. Also
  # see
  # [`Hash.select`](https://docs.ruby-lang.org/en/2.7.0/Hash.html#method-i-select).
  #
  # ```ruby
  # h = { "cat" => "feline", "dog" => "canine", "cow" => "bovine" }
  # h.values_at("cow", "cat")  #=> ["bovine", "feline"]
  # ```
  sig do
    abstract.params(
        arg0: K,
    )
    .returns(T::Array[V])
  end
  def values_at(*arg0); end

  # Returns a new hash that combines the contents of the receiver and the
  # contents of the given hashes.
  #
  # If no block is given, entries with duplicate keys are overwritten with the
  # values from each `other_hash` successively, otherwise the value for each
  # duplicate key is determined by calling the block with the key, its value in
  # the receiver and its value in each `other_hash`.
  #
  # When called without any argument, returns a copy of the receiver.
  #
  # ```ruby
  # h1 = { "a" => 100, "b" => 200 }
  # h2 = { "b" => 246, "c" => 300 }
  # h3 = { "b" => 357, "d" => 400 }
  # h1.merge          #=> {"a"=>100, "b"=>200}
  # h1.merge(h2)      #=> {"a"=>100, "b"=>246, "c"=>300}
  # h1.merge(h2, h3)  #=> {"a"=>100, "b"=>357, "c"=>300, "d"=>400}
  # h1.merge(h2) {|key, oldval, newval| newval - oldval}
  #                   #=> {"a"=>100, "b"=>46,  "c"=>300}
  # h1.merge(h2, h3) {|key, oldval, newval| newval - oldval}
  #                   #=> {"a"=>100, "b"=>311, "c"=>300, "d"=>400}
  # h1                #=> {"a"=>100, "b"=>200}
  # ```
  sig do
    abstract.type_parameters(:A ,:B).params(
        arg0: T::Hash[T.type_parameter(:A), T.type_parameter(:B)],
    )
    .returns(T::Hash[T.any(T.type_parameter(:A), K), T.any(T.type_parameter(:B), V)])
  end
  sig do
    abstract.type_parameters(:A ,:B).params(
        arg0: T::Hash[T.type_parameter(:A), T.type_parameter(:B)],
        blk: T.proc.params(arg0: K, arg1: V, arg2: T.type_parameter(:B)).returns(T.any(V, T.type_parameter(:B))),
    )
    .returns(T::Hash[T.any(T.type_parameter(:A), K), T.any(T.type_parameter(:B), V)])
  end
  def merge(*arg0, &blk); end

  # Adds the contents of the given hashes to the receiver.
  #
  # If no block is given, entries with duplicate keys are overwritten with the
  # values from each `other_hash` successively, otherwise the value for each
  # duplicate key is determined by calling the block with the key, its value in
  # the receiver and its value in each `other_hash`.
  #
  # ```ruby
  # h1 = { "a" => 100, "b" => 200 }
  # h1.merge!          #=> {"a"=>100, "b"=>200}
  # h1                 #=> {"a"=>100, "b"=>200}
  #
  # h1 = { "a" => 100, "b" => 200 }
  # h2 = { "b" => 246, "c" => 300 }
  # h1.merge!(h2)      #=> {"a"=>100, "b"=>246, "c"=>300}
  # h1                 #=> {"a"=>100, "b"=>246, "c"=>300}
  #
  # h1 = { "a" => 100, "b" => 200 }
  # h2 = { "b" => 246, "c" => 300 }
  # h3 = { "b" => 357, "d" => 400 }
  # h1.merge!(h2, h3)
  #                    #=> {"a"=>100, "b"=>357, "c"=>300, "d"=>400}
  # h1                 #=> {"a"=>100, "b"=>357, "c"=>300, "d"=>400}
  #
  # h1 = { "a" => 100, "b" => 200 }
  # h2 = { "b" => 246, "c" => 300 }
  # h3 = { "b" => 357, "d" => 400 }
  # h1.merge!(h2, h3) {|key, v1, v2| v1 }
  #                    #=> {"a"=>100, "b"=>200, "c"=>300, "d"=>400}
  # h1                 #=> {"a"=>100, "b"=>200, "c"=>300, "d"=>400}
  # ```
  #
  # [`Hash#update`](https://docs.ruby-lang.org/en/2.7.0/Hash.html#method-i-update)
  # is an alias for
  # [`Hash#merge!`](https://docs.ruby-lang.org/en/2.7.0/Hash.html#method-i-merge-21).
  sig do
    abstract.type_parameters(:A ,:B).params(
        other_hash: T::Hash[T.type_parameter(:A), T.type_parameter(:B)],
    )
    .returns(T::Hash[T.any(T.type_parameter(:A), K), T.any(T.type_parameter(:B), V)])
  end
  sig do
    abstract.type_parameters(:A ,:B).params(
        other_hash: T::Hash[T.type_parameter(:A), T.type_parameter(:B)],
        blk: T.proc.params(key: K, oldval: V, newval: T.type_parameter(:B)).returns(T.any(V, T.type_parameter(:B))),
    )
    .returns(T::Hash[T.any(T.type_parameter(:A), K), T.any(T.type_parameter(:B), V)])
  end
  def merge!(*other_hash, &blk); end

  # @return [Boolean]
  #
  # source://activesupport//lib/active_support/core_ext/hash/deep_merge.rb#40
  sig { abstract.params(other: T.untyped).returns(T.untyped) }
  def deep_merge?(other); end

  # Merges the caller into +other_hash+. For example,
  #
  #   options = options.reverse_merge(size: 25, velocity: 10)
  #
  # is equivalent to
  #
  #   options = { size: 25, velocity: 10 }.merge(options)
  #
  # This is particularly useful for initializing an options hash
  # with default values.
  #
  # source://activesupport//lib/active_support/core_ext/hash/reverse_merge.rb#14
  sig do
    abstract
      .type_parameters(:Key, :Val)
      .params(
        other: Map[T.type_parameter(:Key), T.type_parameter(:Val)],
      ).returns(
        Map[T.any(K, T.type_parameter(:Key)), T.any(V, T.type_parameter(:Val))]
      )
  end
  def reverse_merge(other); end

  # Destructive +reverse_merge+.
  #
  # source://activesupport//lib/active_support/core_ext/hash/reverse_merge.rb#20
  sig do
    abstract
      .type_parameters(:Key, :Val)
      .params(
        other: Map[T.type_parameter(:Key), T.type_parameter(:Val)],
      ).returns(
        Map[T.any(K, T.type_parameter(:Key)), T.any(V, T.type_parameter(:Val))]
      )
  end
  def reverse_merge!(other); end

  # Returns a new hash with all keys converted to strings.
  #
  #   hash = { name: 'Rob', age: '28' }
  #
  #   hash.stringify_keys
  #   # => {"name"=>"Rob", "age"=>"28"}
  #
  # source://activesupport//lib/active_support/core_ext/hash/keys.rb#10
  sig {abstract.returns(Map[String, V])}
  def stringify_keys; end

  sig { abstract.returns(String) }
  def inspect; end

  # Returns a deep copy of hash.
  #
  #   hash = { a: { b: 'b' } }
  #   dup  = hash.deep_dup
  #   dup[:a][:c] = 'c'
  #
  #   hash[:a][:c] # => nil
  #   dup[:a][:c]  # => "c"
  #
  # source://activesupport//lib/active_support/core_ext/object/deep_dup.rb#43
  sig { abstract.returns(Map[K, V])}
  def deep_dup; end
end
