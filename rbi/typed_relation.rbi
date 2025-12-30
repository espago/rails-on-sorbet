# typed: false

#: (ActiveRecord::Relation) -> TypedRelation[untyped]
def TypedRelation(val); end

# @requires_ancestor: Object
# @abstract
module TypedCommonRelationMethods
  extend T::Generic
  include Enumerable[Elem]

  Elem = type_member(:out)

  # START CommonRelationMethods

  sig { returns(T::Boolean) }
  def blank?; end

  sig { params(blk: T.proc.params(arg0: Elem).void).returns(T.untyped) }
  sig { returns(T::Enumerator[Elem]) }
  def each(&blk); end

  sig { abstract.returns(T::Array[Elem]) }
  def to_a; end

  sig { abstract.returns(T::Array[Elem]) }
  def to_ary; end

  sig do
    abstract.params(
      block: T.nilable(T.proc.params(record: Elem).returns(T.untyped))
    ).returns(T::Boolean)
  end
  def any?(&block); end

  sig { abstract.params(column_name: T.any(String, Symbol)).returns(T.any(Integer, Float, BigDecimal)) }
  def average(column_name); end

  sig do
    params(
      block: T.nilable(T.proc.params(object: Elem).void)
    ).returns(Elem)
  end
  sig do
    params(
      attributes: T::Array[T.untyped],
      block: T.nilable(T.proc.params(object: Elem).void)
    ).returns(T::Array[Elem])
  end
  sig do
    params(
      attributes: T.untyped,
      block: T.nilable(T.proc.params(object: Elem).void)
    ).returns(Elem)
  end
  def build(attributes = nil, &block); end

  sig { abstract.params(operation: Symbol, column_name: T.any(String, Symbol)).returns(T.any(Integer, Float, BigDecimal)) }
  def calculate(operation, column_name); end

  sig { params(column_name: T.nilable(T.any(String, Symbol))).returns(Integer) }
  sig do
    params(
      column_name: NilClass,
      block: T.proc.params(object: Elem).void
    ).returns(Integer)
  end
  def count(column_name = nil, &block); end

  sig do
    params(
      block: T.nilable(T.proc.params(object: Elem).void)
    ).returns(Elem)
  end
  sig do
    params(
      attributes: T::Array[T.untyped],
      block: T.nilable(T.proc.params(object: Elem).void)
    ).returns(T::Array[Elem])
  end
  sig do
    params(
      attributes: T.untyped,
      block: T.nilable(T.proc.params(object: Elem).void)
    ).returns(Elem)
  end
  def create(attributes = nil, &block); end

  sig do
    params(
      block: T.nilable(T.proc.params(object: Elem).void)
    ).returns(Elem)
  end
  sig do
    params(
      attributes: T::Array[T.untyped],
      block: T.nilable(T.proc.params(object: Elem).void)
    ).returns(T::Array[Elem])
  end
  sig do
    params(
      attributes: T.untyped,
      block: T.nilable(T.proc.params(object: Elem).void)
    ).returns(Elem)
  end
  def create!(attributes = nil, &block); end

  sig do
    params(
      attributes: T::Array[T.untyped],
      block: T.nilable(T.proc.params(object: Elem).void)
    ).returns(T::Array[Elem])
  end
  sig do
    params(
      attributes: T.untyped,
      block: T.nilable(T.proc.params(object: Elem).void)
    ).returns(Elem)
  end
  def create_or_find_by(attributes, &block); end

  sig do
    params(
      attributes: T::Array[T.untyped],
      block: T.nilable(T.proc.params(object: Elem).void)
    ).returns(T::Array[Elem])
  end
  sig do
    params(
      attributes: T.untyped,
      block: T.nilable(T.proc.params(object: Elem).void)
    ).returns(Elem)
  end
  def create_or_find_by!(attributes, &block); end

  sig { returns(T::Array[Elem]) }
  def destroy_all; end

  sig { params(conditions: T.untyped).returns(T::Boolean) }
  def exists?(conditions = :none); end

  sig { returns(T.nilable(Elem)) }
  def fifth; end

  sig { returns(Elem) }
  def fifth!; end

  sig do
    params(
      args: T.any(String, Symbol, ::ActiveSupport::Multibyte::Chars, T::Boolean, BigDecimal, Numeric, ::ActiveRecord::Type::Binary::Data, ::ActiveRecord::Type::Time::Value, Date, Time, ::ActiveSupport::Duration, T::Class[T.anything])
    ).returns(Elem)
  end
  sig do
    params(
      args: T::Array[T.any(String, Symbol, ::ActiveSupport::Multibyte::Chars, T::Boolean, BigDecimal, Numeric, ::ActiveRecord::Type::Binary::Data, ::ActiveRecord::Type::Time::Value, Date, Time, ::ActiveSupport::Duration, T::Class[T.anything])]
    ).returns(T::Enumerable[Elem])
  end
  sig do
    params(
      args: NilClass,
      block: T.proc.params(object: Elem).void
    ).returns(T.nilable(Elem))
  end
  def find(args = nil, &block); end

  sig { params(args: T.untyped).returns(T.nilable(Elem)) }
  def find_by(*args); end

  sig { params(args: T.untyped).returns(Elem) }
  def find_by!(*args); end

  sig do
    params(
      start: T.untyped,
      finish: T.untyped,
      batch_size: Integer,
      error_on_ignore: T.untyped,
      order: Symbol,
      block: T.proc.params(object: Elem).void
    ).void
  end
  sig do
    params(
      start: T.untyped,
      finish: T.untyped,
      batch_size: Integer,
      error_on_ignore: T.untyped,
      order: Symbol
    ).returns(T::Enumerator[Elem])
  end
  def find_each(start: nil, finish: nil, batch_size: 1000, error_on_ignore: nil, order: :asc, &block); end

  sig do
    params(
      start: T.untyped,
      finish: T.untyped,
      batch_size: Integer,
      error_on_ignore: T.untyped,
      order: Symbol,
      block: T.proc.params(object: T::Array[Elem]).void
    ).void
  end
  sig do
    params(
      start: T.untyped,
      finish: T.untyped,
      batch_size: Integer,
      error_on_ignore: T.untyped,
      order: Symbol
    ).returns(T::Enumerator[T::Enumerator[Elem]])
  end
  def find_in_batches(start: nil, finish: nil, batch_size: 1000, error_on_ignore: nil, order: :asc, &block); end

  sig do
    params(
      attributes: T::Array[T.untyped],
      block: T.nilable(T.proc.params(object: Elem).void)
    ).returns(T::Array[Elem])
  end
  sig do
    params(
      attributes: T.untyped,
      block: T.nilable(T.proc.params(object: Elem).void)
    ).returns(Elem)
  end
  def find_or_create_by(attributes, &block); end

  sig do
    params(
      attributes: T::Array[T.untyped],
      block: T.nilable(T.proc.params(object: Elem).void)
    ).returns(T::Array[Elem])
  end
  sig do
    params(
      attributes: T.untyped,
      block: T.nilable(T.proc.params(object: Elem).void)
    ).returns(Elem)
  end
  def find_or_create_by!(attributes, &block); end

  sig do
    params(
      attributes: T::Array[T.untyped],
      block: T.nilable(T.proc.params(object: Elem).void)
    ).returns(T::Array[Elem])
  end
  sig do
    params(
      attributes: T.untyped,
      block: T.nilable(T.proc.params(object: Elem).void)
    ).returns(Elem)
  end
  def find_or_initialize_by(attributes, &block); end

  sig do
    abstract.params(
      signed_id: T.untyped,
      purpose: T.untyped
    ).returns(T.nilable(Elem))
  end
  def find_signed(signed_id, purpose: nil); end

  sig { abstract.params(signed_id: T.untyped, purpose: T.untyped).returns(Elem) }
  def find_signed!(signed_id, purpose: nil); end

  sig { abstract.params(arg: T.untyped, args: T.untyped).returns(Elem) }
  def find_sole_by(arg, *args); end

  sig { returns(T.nilable(Elem)) }
  sig { params(limit: Integer).returns(T::Array[Elem]) }
  def first(limit = nil); end

  sig { abstract.returns(Elem) }
  def first!; end

  sig { abstract.returns(T.nilable(Elem)) }
  def forty_two; end

  sig { abstract.returns(Elem) }
  def forty_two!; end

  sig { abstract.returns(T.nilable(Elem)) }
  def fourth; end

  sig { abstract.returns(Elem) }
  def fourth!; end

  sig { abstract.returns(Array) }
  def ids; end

  sig do
    params(
      of: Integer,
      start: T.untyped,
      finish: T.untyped,
      load: T.untyped,
      error_on_ignore: T.untyped,
      order: Symbol,
      use_ranges: T.untyped,
      block: T.proc.params(object: T.untyped).void
    ).void
  end
  sig do
    params(
      of: Integer,
      start: T.untyped,
      finish: T.untyped,
      load: T.untyped,
      error_on_ignore: T.untyped,
      order: Symbol,
      use_ranges: T.untyped
    ).returns(::ActiveRecord::Batches::BatchEnumerator)
  end
  def in_batches(of: 1000, start: nil, finish: nil, load: false, error_on_ignore: nil, order: :asc, use_ranges: nil, &block); end

  sig { abstract.params(record: T.untyped).returns(T::Boolean) }
  def include?(record); end

  sig { returns(T.nilable(Elem)) }
  sig { params(limit: Integer).returns(T::Array[Elem]) }
  def last(limit = nil); end

  sig { returns(Elem) }
  def last!; end

  sig do
    abstract.params(
      block: T.nilable(T.proc.params(record: Elem).returns(T.untyped))
    ).returns(T::Boolean)
  end
  def many?(&block); end

  sig { abstract.params(column_name: T.any(String, Symbol)).returns(T.untyped) }
  def maximum(column_name); end

  sig { abstract.params(record: T.untyped).returns(T::Boolean) }
  def member?(record); end

  sig { abstract.params(column_name: T.any(String, Symbol)).returns(T.untyped) }
  def minimum(column_name); end

  sig do
    params(
      block: T.nilable(T.proc.params(object: Elem).void)
    ).returns(Elem)
  end
  sig do
    params(
      attributes: T::Array[T.untyped],
      block: T.nilable(T.proc.params(object: Elem).void)
    ).returns(T::Array[Elem])
  end
  sig do
    params(
      attributes: T.untyped,
      block: T.nilable(T.proc.params(object: Elem).void)
    ).returns(Elem)
  end
  def new(attributes = nil, &block); end

  sig do
    abstract.params(
      block: T.nilable(T.proc.params(record: Elem).returns(T.untyped))
    ).returns(T::Boolean)
  end
  def none?(&block); end

  sig do
    abstract.params(
      block: T.nilable(T.proc.params(record: Elem).returns(T.untyped))
    ).returns(T::Boolean)
  end
  def one?(&block); end

  sig { abstract.params(column_names: T.untyped).returns(T.untyped) }
  def pick(*column_names); end

  sig { abstract.params(column_names: T.untyped).returns(T.untyped) }
  def pluck(*column_names); end

  sig { abstract.returns(T.nilable(Elem)) }
  def second; end

  sig { abstract.returns(Elem) }
  def second!; end

  sig { abstract.returns(T.nilable(Elem)) }
  def second_to_last; end

  sig { abstract.returns(Elem) }
  def second_to_last!; end

  sig { abstract.returns(Elem) }
  def sole; end

  sig { params(initial_value_or_column: T.untyped).returns(T.any(Integer, Float, BigDecimal)) }
  sig do
    type_parameters(:U)
      .params(
        initial_value_or_column: T.nilable(T.type_parameter(:U)),
        block: T.proc.params(object: Elem).returns(T.type_parameter(:U))
      ).returns(T.type_parameter(:U))
  end
  def sum(initial_value_or_column = nil, &block); end

  sig { returns(T.nilable(Elem)) }
  sig { params(limit: Integer).returns(T::Array[Elem]) }
  def take(limit = nil); end

  sig { abstract.returns(Elem) }
  def take!; end

  sig { abstract.returns(T.nilable(Elem)) }
  def third; end

  sig { abstract.returns(Elem) }
  def third!; end

  sig { abstract.returns(T.nilable(Elem)) }
  def third_to_last; end

  sig { abstract.returns(Elem) }
  def third_to_last!; end

  # END CommonRelationMethods
end

# Represents a typed `ActiveRecord::Relation`.
#
# @abstract
module TypedRelation
  extend T::Generic
  Elem = type_member(:out)

  class << self
    #: (ActiveRecord::Relation) -> TypedRelation::GroupChain[untyped]
    def GroupChain(val); end
    #: (ActiveRecord::QueryMethods::WhereChain) -> TypedRelation::WhereChain[untyped]
    def WhereChain(val); end
  end

  # @abstract
  module GroupChain
    extend T::Generic
    include TypedRelation

    Elem = type_member(:out)

    sig { abstract.params(column_name: T.any(String, Symbol)).returns(T::Hash[T.untyped, T.any(Integer, Float, BigDecimal)]) }
    def average(column_name); end

    sig do
      abstract.params(
        operation: Symbol,
        column_name: T.any(String, Symbol)
      ).returns(T::Hash[T.untyped, T.any(Integer, Float, BigDecimal)])
    end
    def calculate(operation, column_name); end

    sig { abstract.params(column_name: T.untyped).returns(T::Hash[T.untyped, Integer]) }
    def count(column_name = nil); end

    sig { abstract.params(args: T.untyped, blk: T.untyped).returns(T.self_type) }
    def having(*args, &blk); end

    sig { abstract.params(column_name: T.any(String, Symbol)).returns(T::Hash[T.untyped, T.untyped]) }
    def maximum(column_name); end

    sig { abstract.params(column_name: T.any(String, Symbol)).returns(T::Hash[T.untyped, T.untyped]) }
    def minimum(column_name); end

    sig { returns(T::Hash[T.untyped, Integer]) }
    def size; end

    sig do
      abstract.params(
        column_name: T.nilable(T.any(String, Symbol)),
        block: T.nilable(T.proc.params(record: T.untyped).returns(T.untyped))
      ).returns(T::Hash[T.untyped, T.any(Integer, Float, BigDecimal)])
    end
    def sum(column_name = nil, &block); end
  end

  # @abstract
  module WhereChain
    extend T::Generic
    Elem = type_member(:out)

    sig { abstract.params(args: T.untyped).returns(TypedRelation[Elem]) }
    def associated(*args); end

    sig { abstract.params(args: T.untyped).returns(TypedRelation[Elem]) }
    def missing(*args); end

    sig { abstract.params(opts: T.untyped, rest: T.untyped).returns(TypedRelation[Elem]) }
    def not(opts, *rest); end
  end

  include TypedCommonRelationMethods

  # START GeneratedRelationMethods

  sig { abstract.returns(T.self_type) }
  def all; end

  sig { abstract.params(args: T.untyped, blk: T.untyped).returns(T.self_type) }
  def and(*args, &blk); end

  sig { abstract.params(args: T.untyped, blk: T.untyped).returns(T.self_type) }
  def annotate(*args, &blk); end

  sig { abstract.params(args: T.untyped, blk: T.untyped).returns(T.self_type) }
  def arel_columns(*args, &blk); end

  sig { abstract.params(args: T.untyped, blk: T.untyped).returns(T.self_type) }
  def create_with(*args, &blk); end

  sig { abstract.params(value: T::Boolean).returns(T.self_type) }
  def distinct(value = true); end

  sig { abstract.params(args: T.untyped, blk: T.untyped).returns(T.self_type) }
  def eager_load(*args, &blk); end

  sig { abstract.params(args: T.untyped, blk: T.untyped).returns(T.self_type) }
  def except(*args, &blk); end

  sig { abstract.params(args: T.untyped, blk: T.untyped).returns(T.self_type) }
  def excluding(*args, &blk); end

  sig { abstract.params(args: T.untyped, blk: T.untyped).returns(T.self_type) }
  def extending(*args, &blk); end

  sig { abstract.params(association: Symbol).returns(T::Array[T.untyped]) }
  def extract_associated(association); end

  sig { abstract.params(args: T.untyped, blk: T.untyped).returns(T.self_type) }
  def from(*args, &blk); end

  sig { abstract.params(args: T.untyped, blk: T.untyped).returns(GroupChain[Elem]) }
  def group(*args, &blk); end

  sig { params(args: T.untyped, blk: T.untyped).returns(T.self_type) }
  def having(*args, &blk); end

  sig { abstract.params(args: T.untyped, blk: T.untyped).returns(T.self_type) }
  def in_order_of(*args, &blk); end

  sig { abstract.params(args: T.untyped, blk: T.untyped).returns(T.self_type) }
  def includes(*args, &blk); end

  sig { abstract.params(args: T.untyped, blk: T.untyped).returns(T.self_type) }
  def invert_where(*args, &blk); end

  sig { abstract.params(args: T.untyped, blk: T.untyped).returns(T.self_type) }
  def joins(*args, &blk); end

  sig { abstract.params(args: T.untyped, blk: T.untyped).returns(T.self_type) }
  def left_joins(*args, &blk); end

  sig { abstract.params(args: T.untyped, blk: T.untyped).returns(T.self_type) }
  def left_outer_joins(*args, &blk); end

  sig { abstract.params(args: T.untyped, blk: T.untyped).returns(T.self_type) }
  def limit(*args, &blk); end

  sig { abstract.params(args: T.untyped, blk: T.untyped).returns(T.self_type) }
  def lock(*args, &blk); end

  sig { abstract.params(args: T.untyped, blk: T.untyped).returns(T.self_type) }
  def merge(*args, &blk); end

  sig { abstract.params(args: T.untyped, blk: T.untyped).returns(T.self_type) }
  def none(*args, &blk); end

  sig { abstract.params(args: T.untyped, blk: T.untyped).returns(T.self_type) }
  def null_relation?(*args, &blk); end

  sig { abstract.params(args: T.untyped, blk: T.untyped).returns(T.self_type) }
  def offset(*args, &blk); end

  sig { abstract.params(args: T.untyped, blk: T.untyped).returns(T.self_type) }
  def only(*args, &blk); end

  sig { abstract.params(args: T.untyped, blk: T.untyped).returns(T.self_type) }
  def optimizer_hints(*args, &blk); end

  sig { abstract.params(args: T.untyped, blk: T.untyped).returns(T.self_type) }
  def or(*args, &blk); end

  sig { abstract.params(args: T.untyped, blk: T.untyped).returns(T.self_type) }
  def order(*args, &blk); end

  sig { abstract.params(args: T.untyped, blk: T.untyped).returns(T.self_type) }
  def preload(*args, &blk); end

  sig { abstract.params(args: T.untyped, blk: T.untyped).returns(T.self_type) }
  def readonly(*args, &blk); end

  sig { abstract.params(args: T.untyped, blk: T.untyped).returns(T.self_type) }
  def references(*args, &blk); end

  sig { abstract.params(args: T.untyped, blk: T.untyped).returns(T.self_type) }
  def regroup(*args, &blk); end

  sig { abstract.params(args: T.untyped, blk: T.untyped).returns(T.self_type) }
  def reorder(*args, &blk); end

  sig { abstract.params(args: T.untyped, blk: T.untyped).returns(T.self_type) }
  def reselect(*args, &blk); end

  sig { abstract.params(args: T.untyped, blk: T.untyped).returns(T.self_type) }
  def reverse_order(*args, &blk); end

  sig { abstract.params(args: T.untyped, blk: T.untyped).returns(T.self_type) }
  def rewhere(*args, &blk); end

  sig { abstract.params(args: T.untyped, blk: T.untyped).returns(T.self_type) }
  def sanitize_forbidden_attributes(*args, &blk); end

  sig { params(args: T.untyped).returns(T.self_type) }
  sig do
    params(
      blk: T.proc.params(record: Elem).returns(BasicObject)
    ).returns(T::Array[Elem])
  end
  def select(*args, &blk); end

  sig { abstract.params(args: T.untyped, blk: T.untyped).returns(T.self_type) }
  def strict_loading(*args, &blk); end

  sig { abstract.params(args: T.untyped, blk: T.untyped).returns(T.self_type) }
  def structurally_compatible?(*args, &blk); end

  sig { abstract.params(args: T.untyped, blk: T.untyped).returns(T.self_type) }
  def uniq!(*args, &blk); end

  sig { abstract.params(args: T.untyped, blk: T.untyped).returns(T.self_type) }
  def unscope(*args, &blk); end

  sig { returns(WhereChain[Elem]) }
  sig { params(args: T.untyped).returns(T.self_type) }
  def where(*args); end

  sig { abstract.params(args: T.untyped, blk: T.untyped).returns(T.self_type) }
  def with(*args, &blk); end

  sig { abstract.params(args: T.untyped, blk: T.untyped).returns(T.self_type) }
  def with_recursive(*args, &blk); end

  sig { abstract.params(args: T.untyped, blk: T.untyped).returns(T.self_type) }
  def without(*args, &blk); end
end

# @abstract
module TypedGeneratedAssociationRelationMethods
  extend T::Generic
  Elem = type_member(:out)

  sig { abstract.returns(T::Array[Elem]) }
  def to_a; end

  sig { abstract.returns(T::Array[Elem]) }
  def to_ary; end

  sig { abstract.returns(T.self_type) }
  def all; end

  sig { abstract.params(args: T.untyped, blk: T.untyped).returns(T.self_type) }
  def and(*args, &blk); end

  sig { abstract.params(args: T.untyped, blk: T.untyped).returns(T.self_type) }
  def annotate(*args, &blk); end

  sig { abstract.params(args: T.untyped, blk: T.untyped).returns(T.self_type) }
  def arel_columns(*args, &blk); end

  sig { abstract.params(args: T.untyped, blk: T.untyped).returns(T.self_type) }
  def create_with(*args, &blk); end

  sig { abstract.params(value: T::Boolean).returns(T.self_type) }
  def distinct(value = true); end

  sig { abstract.params(args: T.untyped, blk: T.untyped).returns(T.self_type) }
  def eager_load(*args, &blk); end

  sig { abstract.params(args: T.untyped, blk: T.untyped).returns(T.self_type) }
  def except(*args, &blk); end

  sig { abstract.params(args: T.untyped, blk: T.untyped).returns(T.self_type) }
  def excluding(*args, &blk); end

  sig { abstract.params(args: T.untyped, blk: T.untyped).returns(T.self_type) }
  def extending(*args, &blk); end

  sig { abstract.params(association: Symbol).returns(T::Array[T.untyped]) }
  def extract_associated(association); end

  sig { abstract.params(args: T.untyped, blk: T.untyped).returns(T.self_type) }
  def from(*args, &blk); end

  sig { abstract.params(args: T.untyped, blk: T.untyped).returns(TypedAssociation::Relation::GroupChain[Elem]) }
  def group(*args, &blk); end

  sig { abstract.params(args: T.untyped, blk: T.untyped).returns(T.self_type) }
  def having(*args, &blk); end

  sig { abstract.params(args: T.untyped, blk: T.untyped).returns(T.self_type) }
  def in_order_of(*args, &blk); end

  sig { abstract.params(args: T.untyped, blk: T.untyped).returns(T.self_type) }
  def includes(*args, &blk); end

  sig { abstract.params(args: T.untyped, blk: T.untyped).returns(T.self_type) }
  def invert_where(*args, &blk); end

  sig { abstract.params(args: T.untyped, blk: T.untyped).returns(T.self_type) }
  def joins(*args, &blk); end

  sig { abstract.params(args: T.untyped, blk: T.untyped).returns(T.self_type) }
  def left_joins(*args, &blk); end

  sig { abstract.params(args: T.untyped, blk: T.untyped).returns(T.self_type) }
  def left_outer_joins(*args, &blk); end

  sig { abstract.params(args: T.untyped, blk: T.untyped).returns(T.self_type) }
  def limit(*args, &blk); end

  sig { abstract.params(args: T.untyped, blk: T.untyped).returns(T.self_type) }
  def lock(*args, &blk); end

  sig { abstract.params(args: T.untyped, blk: T.untyped).returns(T.self_type) }
  def merge(*args, &blk); end

  sig { abstract.params(args: T.untyped, blk: T.untyped).returns(T.self_type) }
  def none(*args, &blk); end

  sig { abstract.params(args: T.untyped, blk: T.untyped).returns(T.self_type) }
  def null_relation?(*args, &blk); end

  sig { abstract.params(args: T.untyped, blk: T.untyped).returns(T.self_type) }
  def offset(*args, &blk); end

  sig { abstract.params(args: T.untyped, blk: T.untyped).returns(T.self_type) }
  def only(*args, &blk); end

  sig { abstract.params(args: T.untyped, blk: T.untyped).returns(T.self_type) }
  def optimizer_hints(*args, &blk); end

  sig { abstract.params(args: T.untyped, blk: T.untyped).returns(T.self_type) }
  def or(*args, &blk); end

  sig { abstract.params(args: T.untyped, blk: T.untyped).returns(T.self_type) }
  def order(*args, &blk); end

  sig { abstract.params(args: T.untyped, blk: T.untyped).returns(T.self_type) }
  def preload(*args, &blk); end

  sig { abstract.params(args: T.untyped, blk: T.untyped).returns(T.self_type) }
  def readonly(*args, &blk); end

  sig { abstract.params(args: T.untyped, blk: T.untyped).returns(T.self_type) }
  def references(*args, &blk); end

  sig { abstract.params(args: T.untyped, blk: T.untyped).returns(T.self_type) }
  def regroup(*args, &blk); end

  sig { abstract.params(args: T.untyped, blk: T.untyped).returns(T.self_type) }
  def reorder(*args, &blk); end

  sig { abstract.params(args: T.untyped, blk: T.untyped).returns(T.self_type) }
  def reselect(*args, &blk); end

  sig { abstract.params(args: T.untyped, blk: T.untyped).returns(T.self_type) }
  def reverse_order(*args, &blk); end

  sig { abstract.params(args: T.untyped, blk: T.untyped).returns(T.self_type) }
  def rewhere(*args, &blk); end

  sig { abstract.params(args: T.untyped, blk: T.untyped).returns(T.self_type) }
  def sanitize_forbidden_attributes(*args, &blk); end

  sig { params(args: T.untyped).returns(T.self_type) }
  sig do
    params(
      blk: T.proc.params(record: Elem).returns(BasicObject)
    ).returns(T::Array[Elem])
  end
  def select(*args, &blk); end

  sig { abstract.params(args: T.untyped, blk: T.untyped).returns(T.self_type) }
  def strict_loading(*args, &blk); end

  sig { abstract.params(args: T.untyped, blk: T.untyped).returns(T.self_type) }
  def structurally_compatible?(*args, &blk); end

  sig { abstract.params(args: T.untyped, blk: T.untyped).returns(T.self_type) }
  def uniq!(*args, &blk); end

  sig { abstract.params(args: T.untyped, blk: T.untyped).returns(T.self_type) }
  def unscope(*args, &blk); end

  sig { returns(TypedAssociation::Relation::WhereChain[Elem]) }
  sig { params(args: T.untyped).returns(T.self_type) }
  def where(*args); end

  sig { abstract.params(args: T.untyped, blk: T.untyped).returns(T.self_type) }
  def with(*args, &blk); end

  sig { abstract.params(args: T.untyped, blk: T.untyped).returns(T.self_type) }
  def with_recursive(*args, &blk); end

  sig { abstract.params(args: T.untyped, blk: T.untyped).returns(T.self_type) }
  def without(*args, &blk); end
end

module TypedAssociation
  class << self
    #: (::ActiveRecord::Relation) -> TypedAssociation::Relation[untyped]
    def Relation(val); end
    #: (::ActiveRecord::Associations::CollectionProxy) -> CollectionProxy[untyped]
    def CollectionProxy(val); end
  end

  # @abstract
  module Relation
    extend T::Generic
    include TypedCommonRelationMethods
    include TypedGeneratedAssociationRelationMethods

    Elem = type_member(:out)

    class << self
      #: (ActiveRecord::Relation) -> TypedAssociation::Relation::GroupChain[untyped]
      def GroupChain(val); end
      #: (ActiveRecord::QueryMethods::WhereChain) -> TypedAssociation::Relation::WhereChain[untyped]
      def WhereChain(val); end
    end

    # @abstract
    module WhereChain
      extend T::Generic
      Elem = type_member(:out)

      sig { abstract.params(args: T.untyped).returns(TypedAssociation::Relation[Elem]) }
      def associated(*args); end

      sig { abstract.params(args: T.untyped).returns(TypedAssociation::Relation[Elem]) }
      def missing(*args); end

      sig { abstract.params(opts: T.untyped, rest: T.untyped).returns(TypedAssociation::Relation[Elem]) }
      def not(opts, *rest); end
    end

    # @abstract
    module GroupChain
      extend T::Generic
      include TypedAssociation::Relation

      Elem = type_member(:out)

      sig { abstract.params(column_name: T.any(String, Symbol)).returns(T::Hash[T.untyped, T.any(Integer, Float, BigDecimal)]) }
      def average(column_name); end

      sig do
        abstract.params(
          operation: Symbol,
          column_name: T.any(String, Symbol)
        ).returns(T::Hash[T.untyped, T.any(Integer, Float, BigDecimal)])
      end
      def calculate(operation, column_name); end

      sig { abstract.params(column_name: T.untyped).returns(T::Hash[T.untyped, Integer]) }
      def count(column_name = nil); end

      sig { abstract.params(args: T.untyped, blk: T.untyped).returns(T.self_type) }
      def having(*args, &blk); end

      sig { abstract.params(column_name: T.any(String, Symbol)).returns(T::Hash[T.untyped, T.untyped]) }
      def maximum(column_name); end

      sig { abstract.params(column_name: T.any(String, Symbol)).returns(T::Hash[T.untyped, T.untyped]) }
      def minimum(column_name); end

      sig { abstract.returns(T::Hash[T.untyped, Integer]) }
      def size; end

      sig do
        abstract.params(
          column_name: T.nilable(T.any(String, Symbol)),
          block: T.nilable(T.proc.params(record: T.untyped).returns(T.untyped))
        ).returns(T::Hash[T.untyped, T.any(Integer, Float, BigDecimal)])
      end
      def sum(column_name = nil, &block); end
    end
  end

  # Represents a typed `ActiveRecord::Associations::CollectionProxy`
  #
  # @abstract
  module CollectionProxy
    extend T::Generic
    include TypedRelation
    include TypedCommonRelationMethods
    include TypedGeneratedAssociationRelationMethods

    Elem = type_member(:out)

    sig do
      abstract.params(
        records: T.any(Elem, T::Enumerable[T.any(Elem, T::Enumerable[Elem])])
      ).returns(T.self_type)
    end
    def <<(*records); end

    sig do
      abstract.params(
        records: T.any(Elem, T::Enumerable[T.any(Elem, T::Enumerable[Elem])])
      ).returns(T.self_type)
    end
    def append(*records); end

    sig { abstract.returns(T.self_type) }
    def clear; end

    sig do
      abstract.params(
        records: T.any(Elem, T::Enumerable[T.any(Elem, T::Enumerable[Elem])])
      ).returns(T.self_type)
    end
    def concat(*records); end

    sig { returns(T::Array[Elem]) }
    def load_target; end

    sig do
      abstract.params(
        records: T.any(Elem, T::Enumerable[T.any(Elem, T::Enumerable[Elem])])
      ).returns(T.self_type)
    end
    def prepend(*records); end

    sig do
      abstract.params(
        records: T.any(Elem, T::Enumerable[T.any(Elem, T::Enumerable[Elem])])
      ).returns(T.self_type)
    end
    def push(*records); end

    sig do
      abstract.params(
        other_array: T.any(Elem, T::Enumerable[T.any(Elem, T::Enumerable[Elem])])
      ).returns(T::Array[Elem])
    end
    def replace(other_array); end

    sig { abstract.returns(TypedAssociation::Relation[Elem]) }
    def scope; end

    sig { abstract.returns(T::Array[Elem]) }
    def target; end
  end
end