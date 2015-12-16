require 'bundler/gem_tasks'
require 'rake/extensiontask'

begin
  require 'rspec/core/rake_task'
  RSpec::Core::RakeTask.new(:spec)
rescue LoadError
end

spec = Gem::Specification.load('ootalk.gemspec')
Rake::ExtensionTask.new('ootalkc', spec)

task default: :spec
