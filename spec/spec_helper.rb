require 'rubygems'
require 'bundler'
require 'json'
require 'simplecov'
require 'grocer'
require 'rspec/its'
SimpleCov.start

Dir['lib/passbook/**/*.rb'].each {|f| require File.join(File.dirname(__FILE__), '..', f.gsub(/.rb/, ''))}
Dir['lib/rack/**/*.rb'].each {|f| require File.join(File.dirname(__FILE__), '..', f.gsub(/.rb/, ''))}


RSpec.configure do |config|
    config.expect_with :rspec do |expectations|
        expectations.syntax = [:expect, :should]
    end
end