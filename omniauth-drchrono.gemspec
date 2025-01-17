# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omniauth-drchrono/version'

Gem::Specification.new do |spec|
  spec.name          = "omniauth-drchrono"
  spec.version       = Omniauth::DrChrono::VERSION
  spec.authors       = ["John Nadeau"]
  spec.email         = ["johnnnadeau@gmail.com"]
  spec.summary       = %q{A drchrono OAuth2 strategy for OmniAuth.}
  spec.description   = %q{A drchrono OAuth2 strategy for OmniAuth.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'omniauth-oauth2', '~> 1.4'
  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
