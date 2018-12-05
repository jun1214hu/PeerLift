require 'test_helper'

class TaskDashboardControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get task_dashboard_index_url
    assert_response :success
  end

end
