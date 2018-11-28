require 'test_helper'
 require 'minitest/stub_any_instance'

class ScholarshipGuidesControllerTest < ActionDispatch::IntegrationTest

  setup do
    #always runs first for all tests
    scholarship_guide = create(:scholarship_guide)
    
  end

  teardown do
    sign_out
    #runs last for all tests
    #sign out stubbed user
  end

  # actions and behavier to check!
  # before_action :set_scholarship_guide, only: [:show, :edit, :update, :destroy]
  # before_action :authenticate, except: [:index]
  # before_action :user_is_admin?, except: [:index, :show]

  # These pages should open for everyone :index and :show
  # Others should assert failure
  test "should get index" do
    user = create(:user)
    sign_in user

    get scholarship_guides_url
    assert_response :success
  end

  test "should get show" do

    user = create(:user)
    sign_in user

    get scholarship_guide_url(scholarship_guides)
    assert_response :success
  end

  # These pages should only open for admin
  # :new, :edit, :update, :destory
  test "should get new" do
    user = create(:admin_user)
    sign_in user
    

    get new_scholarship_guide_url
    assert_response :success
  end

  # test "should create scholarship_guide" do
  #   assert_difference('ScholarshipGuide.count') do
  #     post scholarship_guides_url, params: { scholarship_guide: { app_count: @scholarship_guide.app_count, description_long: @scholarship_guide.description_long, description_short: @scholarship_guide.description_short, essay_count: @scholarship_guide.essay_count, image_url: @scholarship_guide.image_url, metric_box1: @scholarship_guide.metric_box1, metric_box2: @scholarship_guide.metric_box2, metric_box3: @scholarship_guide.metric_box3, program_name: @scholarship_guide.program_name, resume_count: @scholarship_guide.resume_count, time_estimate: @scholarship_guide.time_estimate, transcript_count: @scholarship_guide.transcript_count } }
  # end





  # test "should create scholarship_guide" do
  #   assert_difference('ScholarshipGuide.count') do
  #     post scholarship_guides_url, params: { scholarship_guide: { app_count: @scholarship_guide.app_count, description_long: @scholarship_guide.description_long, description_short: @scholarship_guide.description_short, essay_count: @scholarship_guide.essay_count, image_url: @scholarship_guide.image_url, metric_box1: @scholarship_guide.metric_box1, metric_box2: @scholarship_guide.metric_box2, metric_box3: @scholarship_guide.metric_box3, program_name: @scholarship_guide.program_name, resume_count: @scholarship_guide.resume_count, time_estimate: @scholarship_guide.time_estimate, transcript_count: @scholarship_guide.transcript_count } }
  #   end

  #   assert_redirected_to scholarship_guide_url(ScholarshipGuide.last)
  # end

  # test "should show scholarship_guide" do
  #   get scholarship_guide_url(@scholarship_guide)
  #   assert_response :success
  # end

  # test "should get edit" do
  #   get edit_scholarship_guide_url(@scholarship_guide)
  #   assert_response :success
  # end

  # test "should update scholarship_guide" do
  #   patch scholarship_guide_url(@scholarship_guide), params: { scholarship_guide: { app_count: @scholarship_guide.app_count, description_long: @scholarship_guide.description_long, description_short: @scholarship_guide.description_short, essay_count: @scholarship_guide.essay_count, image_url: @scholarship_guide.image_url, metric_box1: @scholarship_guide.metric_box1, metric_box2: @scholarship_guide.metric_box2, metric_box3: @scholarship_guide.metric_box3, program_name: @scholarship_guide.program_name, resume_count: @scholarship_guide.resume_count, time_estimate: @scholarship_guide.time_estimate, transcript_count: @scholarship_guide.transcript_count } }
  #   assert_redirected_to scholarship_guide_url(@scholarship_guide)
  # end

  # test "should destroy scholarship_guide" do
  #   assert_difference('ScholarshipGuide.count', -1) do
  #     delete scholarship_guide_url(@scholarship_guide)
  #   end

  #   assert_redirected_to scholarship_guides_url
  # end
end