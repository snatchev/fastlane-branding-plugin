# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fastlane/plugin/branding/version'

Gem::Specification.new do |spec|
  spec.name          = 'fastlane-plugin-branding'
  spec.version       = Fastlane::Branding::VERSION
  spec.author        = %q{Stefan Natchev}
  spec.email         = %q{snatchev@twitter.com}

  spec.summary       = %q{Add some branding to your fastlane output}
  # spec.homepage      = "https://github.com/<GITHUB_USERNAME>/fastlane-plugin-branding"
  spec.license       = "MIT"

  spec.files         = Dir["lib/**/*"] + %w(README.md LICENSE)
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'branding', '~> 0.0.3'
  spec.add_development_dependency 'fastlane', '>= 1.94.1'
end
