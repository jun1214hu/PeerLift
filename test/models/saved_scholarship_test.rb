require 'test_helper'

class SavedScholarshipTest < ActiveSupport::TestCase
 def setup
      saved_scholarship = create(:saved_scholarship)
    end

  test 'valid saved_scholarship' do
  	saved_scholarship = create(:saved_scholarship)
    assert saved_scholarship.valid?
  end

  test 'invalid without user_id' do
    saved_scholarship = create(:saved_scholarship)
    saved_scholarship.user_id = nil

    refute saved_scholarship.valid?, 'Cannot save scholarship without user_id'
    assert_not_nil saved_scholarship.errors[:user_id], 'no validation error for user_id present'
  end 

  test 'invalid without scholarship_guide_id' do
    saved_scholarship = create(:saved_scholarship)
    saved_scholarship.scholarship_guide_id = nil

    refute saved_scholarship.valid?, 'Cannot save scholarship without scholarship_guide_id'
    assert_not_nil saved_scholarship.errors[:scholarship_guide_id], 'no validation error for scholarship_guide_id present'
  end 

  #   test 'invalid without completion status' do
  #   saved_scholarship = create(:saved_scholarship)
  #   saved_scholarship.completed = nil

  #   refute saved_scholarship.valid?, 'Cannot save scholarship with completed'
  #   assert_not_nil saved_scholarship.errors[:completed], 'no validation error for completed present'
  # end 

end
