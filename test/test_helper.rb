ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
require 'rails/test_help'
require "minitest/mock"
require 'minitest/autorun'
 require 'minitest/stub_any_instance'

require 'capybara/poltergeist'

require 'phantomjs' # <-- Not required if your app does Bundler.require automatically (e.g. when using Rails)
Capybara.register_driver :poltergeist do |app|
    Capybara::Poltergeist::Driver.new(app, :phantomjs => Phantomjs.path)
end


class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all
  
  # Add factory bot
  include FactoryBot::Syntax::Methods

  # Add more helper methods to be used by all tests here...
  def sign_in(user)
    ApplicationController.stub_any_instance(:authenticate).returns(true)
    ApplicationController.stub_any_instance(:user_signed_in?).returns(true)
    ApplicationController.stub_any_instance(:current_user).returns(user)
  end


end
