# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'equities/version'

Gem::Specification.new do |spec|
  spec.name          = "equities"
  spec.version       = Equities::VERSION
  spec.authors       = ["JimMayes"]
  spec.email         = ["jim.mayes@gmail.com"]
  spec.summary       = %q{Retrieves a quote for a stock or multiple stocks}
  spec.description   = %q{Equities is a simple Ruby library that retrieves a stock quote from Yahoo Finance (YQL).}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "rest_client"
  spec.add_dependency "json"

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
