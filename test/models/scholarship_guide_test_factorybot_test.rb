require 'test_helper'

class ScholarshipGuideTest < ActiveSupport::TestCase
  def setup
      scholarship_guide = create(:scholarship_guide)
    end

  test 'valid scholarship_guide' do
  	scholarship_guide = create(:scholarship_guide)
    assert scholarship_guide.valid?
  end

  test 'invalid without program_name' do
  	scholarship_guide = create(:scholarship_guide)
  	scholarship_guide.program_name = nil

    refute scholarship_guide.valid?, 'scholarship is valid without a name'
    assert_not_nil scholarship_guide.errors[:program_name], 'no validation error for program_name present'
  end 

  test 'invalid without image_url' do
  	scholarship_guide = create(:scholarship_guide)
  	scholarship_guide.image_url = nil

    refute scholarship_guide.valid?, 'scholarship is valid without image_url'
    assert_not_nil scholarship_guide.errors[:image_url], 'no validation error for image_url present'
  end

  test 'invalid without metric_box1' do
    scholarship_guide = create(:scholarship_guide)
  	scholarship_guide.metric_box1 = nil
    refute scholarship_guide.valid?, 'scholarship is valid without metric_box1'
    assert_not_nil scholarship_guide.errors[:metric_box1], 'no validation error for metric_box1 present'
  end

  test 'invalid without metric_box2' do
    scholarship_guide = create(:scholarship_guide)
  	scholarship_guide.metric_box2 = nil
    refute scholarship_guide.valid?, 'scholarship is valid without metric_box2'
    assert_not_nil scholarship_guide.errors[:metric_box2], 'no validation error for metric_box2 present'
  end

  test 'invalid without metric_box3' do
    scholarship_guide = create(:scholarship_guide)
  	scholarship_guide.metric_box3 = nil
    refute scholarship_guide.valid?, 'scholarship is valid without metric_box3'
    assert_not_nil scholarship_guide.errors[:metric_box3], 'no validation error for metric_box3 present'
  end

  test 'invalid without app_count' do
    scholarship_guide = create(:scholarship_guide)
  	scholarship_guide.app_count = nil
    refute scholarship_guide.valid?, 'scholarship is valid without app_count'
    assert_not_nil scholarship_guide.errors[:app_count], 'no validation error for app_count present'
  end

  test 'invalid without essay_count' do
    scholarship_guide = create(:scholarship_guide)
  	scholarship_guide.essay_count = nil
    refute scholarship_guide.valid?, 'scholarship is valid without essay_count'
    assert_not_nil scholarship_guide.errors[:essay_count], 'no validation error for essay_count present'
  end

  test 'invalid without transcript_count' do
    scholarship_guide = create(:scholarship_guide)
  	scholarship_guide.transcript_count = nil
    refute scholarship_guide.valid?, 'scholarship is valid without transcript_count'
    assert_not_nil scholarship_guide.errors[:transcript_count], 'no validation error for transcript_count present'
  end

  test 'invalid without resume_count' do
    scholarship_guide = create(:scholarship_guide)
  	scholarship_guide.resume_count = nil
    refute scholarship_guide.valid?, 'scholarship is valid without resume_count'
    assert_not_nil scholarship_guide.errors[:resume_count], 'no validation error for resume_count present'
  end

  test 'invalid without time_estimate' do
    scholarship_guide = create(:scholarship_guide)
  	scholarship_guide.time_estimate = nil
    refute scholarship_guide.valid?, 'scholarship is valid without time_estimate'
    assert_not_nil scholarship_guide.errors[:time_estimate], 'no validation error for time_estimate present'
  end


  test '#recent' do
  assert_includes ScholarshipGuide.recent, scholarship_guides(:valid)
  refute_includes ScholarshipGuide.recent, scholarship_guides(:old)
  end
  
end