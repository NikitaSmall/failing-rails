# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require_relative 'config/application'
require 'ci/reporter/rake/cucumber'

Rails.application.load_tasks

task :cucumber => 'ci:setup:cucumber'
