# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'metaopia/version'

Gem::Specification.new do |spec|
  spec.name          = "metaopia"
  spec.version       = Metaopia::VERSION
  spec.authors       = ["kokikoki"]
  spec.email         = ["kato@condesire.com"]
  spec.summary       = %q{Extension of common functions.}
  spec.description   = %q{Extension of common functions.}
  spec.homepage      = "https://github.com/kokikoki/metaopia"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
