# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ootalk/version'

Gem::Specification.new do |spec|
  spec.name          = 'ootalk'
  spec.version       = Ootalk::VERSION
  spec.authors       = ['SBR2015']
  spec.email         = ['SBR2015@example.com']

  spec.summary       = 'This is Ootalk.'
  spec.description   = 'Programming in Multiple Mother tongues.'
  spec.homepage      = 'https://github.com/SBR2015/ootalk'
  spec.license       = 'MIT'
  spec.files         = Dir.glob("ext/**/*.{c,rb}") + Dir.glob("lib/**/*.rb")
  spec.bindir        = 'bin'
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.extensions    = %w[ext/ootalkext/extconf.rb]
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.9'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.4'
  spec.add_development_dependency 'codeclimate-test-reporter', '~> 0.4'
  spec.add_development_dependency 'rake-compiler', '~> 0.9.5'
end
