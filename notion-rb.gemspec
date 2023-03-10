# frozen_string_literal: true

require_relative "lib/notion/version"

Gem::Specification.new do |spec|
  spec.name          = "notion-rb"
  spec.version       = Notion::VERSION
  spec.authors       = ["even.z"]
  spec.email         = ["383490032@qq.com"]
  spec.summary       = "A Ruby client that uses the Notion API easily."
  spec.homepage      = "https://github.com/Ven0802/notion-rb"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/Ven0802/notion-rb/notion.rb"
  spec.metadata["changelog_uri"] = "https://github.com/Ven0802/notion-rb/notion.rb"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "rspec", "~> 3.2"
  spec.add_development_dependency "rubocop", "~> 1.7"
end
