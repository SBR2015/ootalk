require 'bundler/gem_tasks'

begin
  require 'active_support/all'
  require 'rspec/core/rake_task'
  RSpec::Core::RakeTask.new(:spec)
rescue LoadError
end
task default: :spec
