# encoding: utf-8

require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  gem.name = "aloha_rails"
  gem.homepage = "http://github.com/tylergannon/aloha_rails"
  gem.license = "MIT"
  gem.summary = %Q{Aloha Editor packaged for your rails pleasure}
  gem.description = %Q{Aloha... rails!!!}
  gem.email = "tgannon@gmail.com"
  gem.authors = ["Tyler Gannon"]
  gem.files = Dir["{lib}/**/*", "{app}/**/*", "{public}/**/*", "*"]
  # dependencies defined in Gemfile
end
Jeweler::RubygemsDotOrgTasks.new


