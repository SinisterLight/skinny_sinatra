$: << File.dirname(__FILE__)
ENV['RACK_ENV'] ||= 'development'

require 'bundler/setup'
require "active_support/all"
require "sinatra/activerecord/rake"
require "skinny_sinatra"

Dir[File.join(File.dirname(__FILE__), 'lib/tasks/*.rake')].each { |f| load f }

task :default => [:spec]

desc "Run specs"
task :spec do
  require 'rspec/core/rake_task'
  require 'rspec/core/version'

  RSpec::Core::RakeTask.new(:spec) do |t|
    t.pattern = './spec/**/*_spec.rb'
  end
end

task :console do
end
