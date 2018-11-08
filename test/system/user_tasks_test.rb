require "application_system_test_case"

class UserTasksTest < ApplicationSystemTestCase
  setup do
    @user_task = user_tasks(:one)
  end

  test "visiting the index" do
    visit user_tasks_url
    assert_selector "h1", text: "User Tasks"
  end

  test "creating a User task" do
    visit user_tasks_url
    click_on "New User Task"

    fill_in "Essay Count", with: @user_task.essay_count
    fill_in "Scholarship", with: @user_task.scholarship_id
    fill_in "Scholarship Name", with: @user_task.scholarship_name
    fill_in "Test Score Count", with: @user_task.test_score_count
    fill_in "Test Subjects", with: @user_task.test_subjects
    fill_in "Transcript Count", with: @user_task.transcript_count
    fill_in "User", with: @user_task.user_id
    click_on "Create User task"

    assert_text "User task was successfully created"
    click_on "Back"
  end

  test "updating a User task" do
    visit user_tasks_url
    click_on "Edit", match: :first

    fill_in "Essay Count", with: @user_task.essay_count
    fill_in "Scholarship", with: @user_task.scholarship_id
    fill_in "Scholarship Name", with: @user_task.scholarship_name
    fill_in "Test Score Count", with: @user_task.test_score_count
    fill_in "Test Subjects", with: @user_task.test_subjects
    fill_in "Transcript Count", with: @user_task.transcript_count
    fill_in "User", with: @user_task.user_id
    click_on "Update User task"

    assert_text "User task was successfully updated"
    click_on "Back"
  end

  test "destroying a User task" do
    visit user_tasks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "User task was successfully destroyed"
  end
end
