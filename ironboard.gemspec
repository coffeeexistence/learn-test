# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ironboard/version'

Gem::Specification.new do |spec|
  spec.name          = "learn"
  spec.version       = Ironboard::VERSION
  spec.authors       = ["Logan Hasson"]
  spec.email         = ["logan.hasson@gmail.com"]
  spec.summary       = %q{Runs RSpec and Jasmine builds and pushes JSON output to Ironboard.}
  spec.homepage      = "http://github.com/flatiron-labs/ironboard-gem"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib", "bin"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_runtime_dependency "rspec", "~> 3.0"
  spec.add_runtime_dependency "netrc"
  spec.add_runtime_dependency "git", "~> 1.2"
  spec.add_runtime_dependency "oj", "~> 2.9"
  spec.add_runtime_dependency "faraday", "~> 0.9"
  spec.add_runtime_dependency "crack"
  spec.add_runtime_dependency "jasmine"
end

