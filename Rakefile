# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

Rails.application.load_tasks
require "bundler/gem_tasks"

task :submodule do
  sh 'git submodule update --init' unless File.exist?('bootstrap-datetimepicker/README.md')
end

desc 'Clean the vendor directory'
task clean: :submodule do
  Rake.rake_output_message 'Cleaning up the vendor directory.'
  FileUtils.rm_rf 'vendor'
end

desc 'Generate the JavaScript assets'
task javascripts: :submodule do
  target_dir = 'vendor/assets/javascripts'
  FileUtils.mkdir_p target_dir
  Rake.rake_output_message 'Generating JavaScripts.'
  FileUtils.cp_r Dir['bootstrap-datetimepicker/src/js/*'], target_dir
  FileUtils.cp_r Dir['bootstrap-datetimepicker/build/js/*'], target_dir
end

desc 'Generate the CSS assets'
task stylesheets: :submodule do
  target_dir = 'vendor/assets/stylesheets'
  mkdir_p target_dir
  Rake.rake_output_message 'Generating stylesheets'
  FileUtils.cp Dir['bootstrap-datetimepicker/build/css/*'], target_dir
end

desc 'Clean and then generate everything'
task assets: [:clean, :javascripts, :stylesheets]
task default: :assets