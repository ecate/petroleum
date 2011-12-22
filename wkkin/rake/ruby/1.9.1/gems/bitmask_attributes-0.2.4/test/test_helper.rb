require "rubygems"
require 'bundler/setup'

require 'test/unit'
begin; require 'turn'; rescue LoadError; end
require 'shoulda'

require 'active_record'

$:.unshift File.expand_path("../../lib", __FILE__)
require 'bitmask_attributes'


ActiveRecord::Base.establish_connection(
  :adapter  => 'sqlite3',
  :database => ':memory:'
)


# Load support files
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each { |f| require f }
