ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require "minitest/autorun"
require "minitest/spec"
require "minitest/reporters"
#require "minitest/capybara"
require "minitest/rails/capybara"
require 'pry'
require 'pry-nav'

    

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
  include Capybara::DSL
  include Capybara::Assertions

  Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
end