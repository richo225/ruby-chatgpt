# frozen_string_literal: true

require_relative "lib/ruby/chatgpt/version"

Gem::Specification.new do |spec|
  spec.name                  = "ruby-chatgpt"
  spec.version               = Ruby::Chatgpt::VERSION
  spec.authors               = ["Richard Bates"]
  spec.email                 = ["rich.bates@protonmail.com"]

  spec.required_ruby_version = ">= 2.6.0"
  spec.description           = "CLI interface for OpenAI ChatGPT in Ruby 🌊🤖"
  spec.homepage              = "https://github.com/richo225/ruby-chatgpt"
  spec.summary               = spec.description
  spec.license               = "MIT"

  spec.metadata["homepage_uri"]    = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"]   = "https://github.com/richo225/ruby-chatgpt/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.executables = ["chatgpt"]
  spec.require_paths = ["lib"]

  spec.add_dependency "ruby-openai", "~> 4.0"
end
