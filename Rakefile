require 'bundler/gem_tasks'

begin
  require 'rspec/core/rake_task'
  require 'active_support/all'
  RSpec::Core::RakeTask.new(:spec)
rescue LoadError
end
task default: :spec
