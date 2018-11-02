require 'test_helper'

class ScholarshipGuidesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @scholarship_guide = scholarship_guides(:one)
  end

  test "should get index" do
    get scholarship_guides_url
    assert_response :success
  end

  test "should get new" do
    get new_scholarship_guide_url
    assert_response :success
  end

  test "should create scholarship_guide" do
    assert_difference('ScholarshipGuide.count') do
      post scholarship_guides_url, params: { scholarship_guide: { app_count: @scholarship_guide.app_count, description_long: @scholarship_guide.description_long, description_short: @scholarship_guide.description_short, essay_count: @scholarship_guide.essay_count, image_url: @scholarship_guide.image_url, metric_box1: @scholarship_guide.metric_box1, metric_box2: @scholarship_guide.metric_box2, metric_box3: @scholarship_guide.metric_box3, program_name: @scholarship_guide.program_name, resume_count: @scholarship_guide.resume_count, scholarship_id: @scholarship_guide.scholarship_id, time_estimate: @scholarship_guide.time_estimate, transcript_count: @scholarship_guide.transcript_count } }
    end

    assert_redirected_to scholarship_guide_url(ScholarshipGuide.last)
  end

  test "should show scholarship_guide" do
    get scholarship_guide_url(@scholarship_guide)
    assert_response :success
  end

  test "should get edit" do
    get edit_scholarship_guide_url(@scholarship_guide)
    assert_response :success
  end

  test "should update scholarship_guide" do
    patch scholarship_guide_url(@scholarship_guide), params: { scholarship_guide: { app_count: @scholarship_guide.app_count, description_long: @scholarship_guide.description_long, description_short: @scholarship_guide.description_short, essay_count: @scholarship_guide.essay_count, image_url: @scholarship_guide.image_url, metric_box1: @scholarship_guide.metric_box1, metric_box2: @scholarship_guide.metric_box2, metric_box3: @scholarship_guide.metric_box3, program_name: @scholarship_guide.program_name, resume_count: @scholarship_guide.resume_count, scholarship_id: @scholarship_guide.scholarship_id, time_estimate: @scholarship_guide.time_estimate, transcript_count: @scholarship_guide.transcript_count } }
    assert_redirected_to scholarship_guide_url(@scholarship_guide)
  end

  test "should destroy scholarship_guide" do
    assert_difference('ScholarshipGuide.count', -1) do
      delete scholarship_guide_url(@scholarship_guide)
    end

    assert_redirected_to scholarship_guides_url
  end
end
