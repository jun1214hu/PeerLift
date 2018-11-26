require "application_system_test_case"
require "test_helper"

class ScholarshipGuidesTest < ApplicationSystemTestCase
  setup do
    @scholarship_guide = create(:scholarship_guide)
  end

  test "visiting the index" do
    visit scholarship_guides_url
    assert_selector "h1", text: "Scholarship Guides"
  end

  # test "creating a Scholarship guide" do
  #   visit scholarship_guides_url
  #   click_on "New Scholarship Guide"

  #   fill_in "App Count", with: @scholarship_guide.app_count
  #   fill_in "Description Long", with: @scholarship_guide.description_long
  #   fill_in "Description Short", with: @scholarship_guide.description_short
  #   fill_in "Essay Count", with: @scholarship_guide.essay_count
  #   fill_in "Image Url", with: @scholarship_guide.image_url
  #   fill_in "Metric Box1", with: @scholarship_guide.metric_box1
  #   fill_in "Metric Box2", with: @scholarship_guide.metric_box2
  #   fill_in "Metric Box3", with: @scholarship_guide.metric_box3
  #   fill_in "Program Name", with: @scholarship_guide.program_name
  #   fill_in "Resume Count", with: @scholarship_guide.resume_count
  #   fill_in "Time Estimate", with: @scholarship_guide.time_estimate
  #   fill_in "Transcript Count", with: @scholarship_guide.transcript_count
  #   click_on "Create Scholarship guide"

  #   assert_text "Scholarship guide was successfully created"
  #   click_on "Back"
  # end

  # test "updating a Scholarship guide" do
  #   visit scholarship_guides_url
  #   click_on "Edit", match: :first

  #   fill_in "App Count", with: @scholarship_guide.app_count
  #   fill_in "Description Long", with: @scholarship_guide.description_long
  #   fill_in "Description Short", with: @scholarship_guide.description_short
  #   fill_in "Essay Count", with: @scholarship_guide.essay_count
  #   fill_in "Image Url", with: @scholarship_guide.image_url
  #   fill_in "Metric Box1", with: @scholarship_guide.metric_box1
  #   fill_in "Metric Box2", with: @scholarship_guide.metric_box2
  #   fill_in "Metric Box3", with: @scholarship_guide.metric_box3
  #   fill_in "Program Name", with: @scholarship_guide.program_name
  #   fill_in "Resume Count", with: @scholarship_guide.resume_count
  #   fill_in "Time Estimate", with: @scholarship_guide.time_estimate
  #   fill_in "Transcript Count", with: @scholarship_guide.transcript_count
  #   click_on "Update Scholarship guide"

  #   assert_text "Scholarship guide was successfully updated"
  #   click_on "Back"
  # end

  # test "destroying a Scholarship guide" do
  #   visit scholarship_guides_url
  #   page.accept_confirm do
  #     click_on "Destroy", match: :first
  #   end

  #   assert_text "Scholarship guide was successfully destroyed"
  # end
end
