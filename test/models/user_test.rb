require 'test_helper'

class UserTest < ActiveSupport::TestCase

   test 'valid user' do
   	user = create(:user)
   	assert user.valid?
  end

  test 'invalid without last name' do
  	user = create(:user)
  	user.last_name = nil

  	refute user.valid?, 'User saved without a last name '
  	assert_not_nil user.errors[:last_name], 'no validation error for last name present'
  end

    test 'invalid without first name' do
  	user = create(:user)
  	user.first_name = nil

  	refute user.valid?, 'User saved without a first name '
  	assert_not_nil user.errors[:first_name], 'no validation error for first name present'

  end

  test 'invalid without email' do
  	user = create(:user)
  	user.email = nil

  	refute user.valid?, 'User saved without an email'
  	assert_not_nil user.errors[:email], 'no validation error for email present'
  end

   test 'invalid without uid' do
  	user = create(:user)
  	user.uid = nil

  	refute user.valid?, 'User saved without an uid'
  	assert_not_nil user.errors[:uid], 'no validation error for uid present'

  end

   test 'invalid without provider' do
  	user = create(:user)
  	user.provider = nil

  	refute user.valid?, 'User saved without a provider'
  	assert_not_nil user.errors[:provider], 'no validation error for provider present'

  end
end
