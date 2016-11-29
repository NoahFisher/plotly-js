# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'plotly/js/version'

Gem::Specification.new do |spec|
  spec.name          = "plotly-js"
  spec.version       = Plotly::Js::VERSION
  spec.authors       = ["NoahFisher"]
  spec.email         = ["noah.fisher@gmail.com"]

  spec.summary       = %q{A wrapper for plotly.js for use in the Rails asset pipeline}
  spec.description   = %q{plotlyjs for rails > 4.1}
  spec.homepage      = "https://github.com/NoahFisher/plotly-js"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end
