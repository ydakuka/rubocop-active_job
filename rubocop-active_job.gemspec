# frozen_string_literal: true

require_relative "lib/rubocop/active_job/version"

Gem::Specification.new do |spec|
  spec.name = "rubocop-active_job"
  spec.version = RuboCop::ActiveJob::VERSION
  spec.authors = ["Yauheni Dakuka"]
  spec.email = ["yauheni.dakuka@gmail.com"]

  spec.summary = 'Rubocop for ActiveJob'
  spec.homepage = 'https://github.com/ydakuka/rubocop-active_job'
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.7.0"

  spec.metadata['allowed_push_host'] = 'https://www.rubygems.org'

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata['changelog_uri'] = 'https://github.com/ydakuka/rubocop-active_job/CHANGELOG.md'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html

  spec.add_runtime_dependency 'rubocop', '>= 1.22.0'
end
