# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dotjs_sprockets/constants'

Gem::Specification.new do |spec|
  spec.name          = "dotjs_sprockets"
  spec.version       = DotjsSprockets::VERSION
  spec.authors       = ["Roberto Dip"]
  spec.email         = ["dip.jesusr@gmail.com"]
  spec.summary       = %q{doT.js templates for sprockets.}
  spec.description   = %q{doT.js templates for sprockets powered by ExecJS.}
  spec.homepage      = "https://github.com/roperzh/dotjs_sprockets"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake",    "~> 0"

  spec.add_runtime_dependency "sprockets", "~> 2"
  spec.add_runtime_dependency "execjs",    "~> 2"
end
