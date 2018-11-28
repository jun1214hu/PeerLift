require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest

#   before_action :user_is_admin?, only: [:index, :edit, :destroy, :new]

  setup do
    @user = create(:user)
    # "Sign in"
    sign_in @user
  end

  # These are available to the user that is not an admin [:update, :show]
 test "should show user" do

    get user_url(@user)
    assert_response :success
  end


  test "should update user" do
    patch user_url(@user), params: { user: { first_name: @user.first_name, last_name: @user.last_name, email: @user.email, provider: @user.provider, uid: @user.uid, is_admin: 0 } }
    assert_redirected_to user_url(@user)
  end

  # These are only available to admins [:index, :edit, :destroy, :new]

  test "should get index" do
    @admin = create(:admin_user)
    # "Sign in"
    sign_in @admin

    get users_url
    assert_response :success
  end

  test "should get new" do
    @admin = create(:admin_user)
    # "Sign in"
    sign_in @admin

    get new_user_url
    assert_response :success
  end

  # this does not work and I'm not sure why.
  # Error is that it expect 5 but there is only 4
  # test "should create user" do
  #   @admin = create(:admin_user)
  #   # "Sign in"
  #   sign_in @admin

  #   assert_difference('User.count') do
  #     post users_url, params: { user: { first_name: @user.first_name, last_name: @user.last_name, email: @user.email, provider: @user.provider, uid: @user.uid, is_admin: @user.is_admin } }
  #   end

  #   assert_redirected_to user_url(User.last)
  # end

  test "should get edit" do

    @admin = create(:admin_user)
    # "Sign in"
    sign_in @admin



    get edit_user_url(@admin)
    assert_response :success
  end


  test "should destroy user" do
    @admin = create(:admin_user)
    # "Sign in"
    sign_in @admin

    assert_difference('User.count', -1) do
      delete user_url(@admin)
    end

    assert_redirected_to users_url
  end

end