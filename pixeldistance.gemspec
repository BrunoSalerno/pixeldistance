# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pixeldistance/version'

Gem::Specification.new do |spec|
  spec.name          = "pixeldistance"
  spec.version       = PixelDistance::VERSION
  spec.authors       = ["Bruno Salerno"]
  spec.email         = ["br.salerno@gmail.com"]

  spec.summary       = 'Calculate pixel distance between geographic points'
  spec.description   = 'PixelDistance calculates the distance in pixels between two geographic points using Google Maps scale levels'
  spec.homepage      = 'https://github.com/BrunoSalerno/pixeldistance'
  spec.license       = "MIT"


  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
end
