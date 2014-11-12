require 'bundler'
require "bundler/gem_tasks"

Bundler.require


task :test do
  Dir.glob('./test/**/*_test.rb') { |file| require file }
end
