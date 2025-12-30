# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

Add changes in new features here. Do not change the gem's version in pull/merge requests.

### Changes
-

## [0.5.1] - 30.12.2025

[Diff](https://github.com/espago/rails-on-sorbet/compare/v0.5.0...v0.5.1)

### Changes
- Fix RBI signatures for `TypedRelation`

## [0.5.0] - 30.12.2025

[Diff](https://github.com/espago/rails-on-sorbet/compare/v0.4.0...v0.5.0)

### Changes
- Add missing methods to `TypedRelation`

## [0.4.0] - 22.10.2025

[Diff](https://github.com/espago/rails-on-sorbet/compare/v0.3.6...v0.4.0)

### Changes
- Add `Map::Params` alias for `Map[String | Symbol, untyped]`

## [0.3.6] - 21.10.2025

[Diff](https://github.com/espago/rails-on-sorbet/compare/v0.3.5...v0.3.6)

### Changes
- Another fix for  `TypedRelation` tapioca compiler (type member declarations)

## [0.3.5] - 21.10.2025

[Diff](https://github.com/espago/rails-on-sorbet/compare/v0.3.4...v0.3.5)

### Changes
- Fix `TypedRelation` RBI and tapioca compiler

## [0.3.4] - 21.10.2025

[Diff](https://github.com/espago/rails-on-sorbet/compare/v0.3.3...v0.3.4)

### Changes
- Add `Map::Params`
- Require `TypedRelation` automatically

## [0.3.3] - 20.10.2025

[Diff](https://github.com/espago/rails-on-sorbet/compare/v0.3.2...v0.3.3)

### Changes
- Fix tapioca compiler and subtyping for `TypedRelation`

## [0.3.2] - 20.10.2025

[Diff](https://github.com/espago/rails-on-sorbet/compare/v0.3.1...v0.3.2)

### Changes
- Add `extend T::Generic` to `TypedRelation` definitions

## [0.3.1] - 20.10.2025

[Diff](https://github.com/espago/rails-on-sorbet/compare/v0.3.0...v0.3.1)

### Changes
- Fix `Tapioca::Compilers::RailsOnSorbetActiveRecordRelations` and `TypedRelation` definitions

## [0.3.0] - 20.10.2025

[Diff](https://github.com/espago/rails-on-sorbet/compare/v0.2.8...v0.3.0)

### Changes
- Add `TypedRelation` and `TypedAssociation` for better ActiveRecord::Relation sorbet handling

## [0.2.8] - 16.10.2025

[Diff](https://github.com/espago/rails-on-sorbet/compare/v0.2.7...v0.2.8)

### Changes
- Add missing `Map#each` method

## [0.2.7] - 08.10.2025

[Diff](https://github.com/espago/rails-on-sorbet/compare/v0.2.6...v0.2.7)

### Changes
- Improve signatures of `Map#include?`, `Map#key?`, `Map#[]`, `Map#value?`,`Hash#include?`, `Hash#key?`, `Hash#[]`, `Hash#value?`, `Set#include?`

## [0.2.6] - 02.10.2025

[Diff](https://github.com/espago/rails-on-sorbet/compare/v0.2.5...v0.2.6)

### Changes
- Add missing `T::Generic`

## [0.2.0] - 18.09.2025

[Diff](https://github.com/espago/rails-on-sorbet/compare/v0.1.1...v0.2.0)

### Changes
- Change `Rails::On::Sorbet::CurrentAttributes` from a module to a class
- Favour using `Rails::On::Sorbet::CurrentAttributes` instead of `ActiveSupport::CurrentAttributes`

## [0.1.1] - 18.09.2025

[Diff](https://github.com/espago/rails-on-sorbet/compare/v0.1.0...v0.1.1)

### Changes
- Fix `.rbi` file placing

## [0.1.0] - 18.09.2025

[Diff](https://github.com/espago/rails-on-sorbet/compare/v0.0.0...v0.1.0)

- Initial release
