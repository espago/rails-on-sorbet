# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

Add changes in new features here. Do not change the gem's version in pull/merge requests.

### Changes
-

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
