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
  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.9'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.4'
  spec.add_development_dependency 'codeclimate-test-reporter', '~> 0.4'
end
