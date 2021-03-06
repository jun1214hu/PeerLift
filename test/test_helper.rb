ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
require 'rails/test_help'
#require "minitest/mock"
#require 'minitest/autorun'
#require "minitest/unit"
require "mocha/minitest"

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add factory bot
  include FactoryBot::Syntax::Methods

  # Add more helper methods to be used by all tests here...
  def sign_in(user)
    ApplicationController.any_instance.stubs(:authenticate).returns(true)
    ApplicationController.any_instance.stubs(:user_signed_in?).returns(true)
    ApplicationController.any_instance.stubs(:current_user).returns(user)
  end

  def sign_out
    ApplicationController.any_instance.stubs(:authenticate).returns(false)
    ApplicationController.any_instance.stubs(:user_signed_in?).returns(false)
    ApplicationController.any_instance.stubs(:current_user).returns(nil)
  end

end