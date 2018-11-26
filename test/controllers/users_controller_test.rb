require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  
  test 'should get tasks' do
    # Create a user using a FactoryBot factory
    user = create(:user)

    # "Sign in"
    sign_in user

    get users_url
    assert_response :success
    assert_includes @response.body, '<!DOCTYPE html>'
end


  # setup do
  #   @user = users(:one)
  # end

  # test "should get index" do
  #   get users_url
  #   assert_response :success
  # end

  # test "should get new" do
  #   get new_user_url
  #   assert_response :success
  # end

  # test "should create user" do
  #   assert_difference('User.count') do
  #     post users_url, params: { user: { city: @user.city, email: @user.email, first_name: @user.first_name, grad_year: @user.grad_year, grade: @user.grade, integer: @user.integer, last_name: @user.last_name, school: @user.school, state: @user.state, string: @user.string } }
  #   end

  #   assert_redirected_to user_url(User.last)
  # end

  # test "should show user" do
  #   get user_url(@user)
  #   assert_response :success
  # end

  # test "should get edit" do
  #   get edit_user_url(@user)
  #   assert_response :success
  # end

  # test "should update user" do
  #   patch user_url(@user), params: { user: { city: @user.city, email: @user.email, first_name: @user.first_name, grad_year: @user.grad_year, grade: @user.grade, integer: @user.integer, last_name: @user.last_name, school: @user.school, state: @user.state, string: @user.string } }
  #   assert_redirected_to user_url(@user)
  # end

  # test "should destroy user" do
  #   assert_difference('User.count', -1) do
  #     delete user_url(@user)
  #   end

  #   assert_redirected_to users_url
  # end
end
