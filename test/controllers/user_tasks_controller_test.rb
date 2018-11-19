require 'test_helper'

class UserTasksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_task = user_tasks(:one)
  end

  test "should get index" do
    get user_tasks_url
    assert_response :success
  end

  test "should get new" do
    get new_user_task_url
    assert_response :success
  end

  test "should create user_task" do
    assert_difference('UserTask.count') do
      post user_tasks_url, params: { user_task: { essay_count: @user_task.essay_count, scholarship_guide_id: @user_task.scholarship_guide_id, scholarship_name: @user_task.scholarship_name, test_score_count: @user_task.test_score_count, test_subjects: @user_task.test_subjects, transcript_count: @user_task.transcript_count, user_id: @user_task.user_id } }
    end

    assert_redirected_to user_task_url(UserTask.last)
  end

  test "should show user_task" do
    get user_task_url(@user_task)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_task_url(@user_task)
    assert_response :success
  end

  test "should update user_task" do
    patch user_task_url(@user_task), params: { user_task: { essay_count: @user_task.essay_count, scholarship_guide_id: @user_task.scholarship_guide_id, scholarship_name: @user_task.scholarship_name, test_score_count: @user_task.test_score_count, test_subjects: @user_task.test_subjects, transcript_count: @user_task.transcript_count, user_id: @user_task.user_id } }
    assert_redirected_to user_task_url(@user_task)
  end

  test "should destroy user_task" do
    assert_difference('UserTask.count', -1) do
      delete user_task_url(@user_task)
    end

    assert_redirected_to user_tasks_url
  end
end
