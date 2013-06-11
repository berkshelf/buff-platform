# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'buff/platform/version'

Gem::Specification.new do |spec|
  spec.name          = "buff-platform"
  spec.version       = Buff::Platform::VERSION
  spec.authors       = ["Jamie Winsor"]
  spec.email         = ["reset@riotgames.com"]
  spec.description   = %q{A mixin for querying the platform running Ruby}
  spec.summary       = %q{Buff up your code with a mixin for querying the platform running Ruby}
  spec.homepage      = "https://github.com/RiotGames/buff-platform"
  spec.license       = "Apache 2.0"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^spec/})
  spec.require_paths = ["lib"]
  spec.required_ruby_version = ">= 1.9.2"

  spec.add_development_dependency "buff-ruby_engine"
  spec.add_development_dependency "thor", "~> 0.18.0"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "fuubar"
  spec.add_development_dependency "guard"
  spec.add_development_dependency "guard-rspec"
  spec.add_development_dependency "guard-spork"
  spec.add_development_dependency "spork"
end
