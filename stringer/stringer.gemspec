# frozen_string_literal: true

require_relative "lib/stringer/version"

Gem::Specification.new do |spec|
  spec.name          = "stringer"
  spec.version       = Stringer::VERSION
  spec.authors       = ["keikishimoto"]
  spec.email         = ["keikishim2@gmail.com"]

  spec.summary       = "This is simple gem that will help us extend the functionality of strings"
  spec.homepage      = "https://mygemserver.com"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.4.0"

  spec.metadata["allowed_push_host"] = "https://mygemserver.com"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://mygemserver.com"
  spec.metadata["changelog_uri"] = "https://mygemserver.com"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
