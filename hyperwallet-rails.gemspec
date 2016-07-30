# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hyperwallet/version'

Gem::Specification.new do |spec|
  spec.name          = "hyperwallet-ruby"
  spec.version       = Hyperwallet::VERSION
  spec.authors       = ["Troy Martin"]
  spec.email         = ["troy@devatotech.com"]
  spec.required_ruby_version = '>= 2.0.0'

  spec.summary       = %q{Ruby bindings for the Hyperwallet REST API.}
  spec.description   = %q{Ruby bindings for the Hyperwallet REST API.}
  spec.homepage      = "https://github.com/Devato/hyperwallet-ruby"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.add_dependency('rest-client')
  spec.add_dependency('multi_json')

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rspec-its"

end
