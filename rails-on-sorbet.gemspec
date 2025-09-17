# frozen_string_literal: true

require_relative 'lib/rails/on/sorbet/version'

Gem::Specification.new do |spec|
  spec.name = 'rails-on-sorbet'
  spec.version = Rails::On::Sorbet::VERSION
  spec.authors = ['Mateusz Drewniak', 'Espago']
  spec.email = ['matmg24@gmail.com']

  spec.summary = 'A Rails extension that expands support for sorbet'
  spec.description = spec.summary
  spec.homepage = 'https://github.com/espago/rails-on_sorbet'
  spec.required_ruby_version = '>= 3.3.0'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = spec.homepage
  spec.metadata['changelog_uri'] = 'https://raw.githubusercontent.com/espago/rails-on_sorbet/refs/heads/main/CHANGELOG.md'
  spec.metadata['rubygems_mfa_required'] = 'true'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  gemspec = File.basename(__FILE__)
  spec.files = IO.popen(%w[git ls-files -z], chdir: __dir__, err: IO::NULL) do |ls|
    ls.readlines("\x0", chomp: true).reject do |f|
      (f == gemspec) ||
        f.start_with?(*%w[bin/ sorbet/ rbi/ .github/ Gemfile .gitignore test/ .gitlab-ci.yml .rubocop.yml])
    end
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'booleans', '~> 0.1.3'
  spec.add_dependency 'rails', '>= 7.2'
  spec.add_dependency 'sorbet-runtime', '>= 0.6'
end
