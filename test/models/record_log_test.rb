require 'test_helper'

# schema
# user_id, 
# 	:scholarship_guide_id, 
# 	:scholarship_name, 
# 	:saved, 
# 	:completed, 
# 	presence: true
# end

class RecordLogTest < ActiveSupport::TestCase
  def setup
      record_log = create(:record_log)
    end

  test 'valid record_log' do
  	record_log = create(:record_log)
    assert record_log.valid?
  end

  test 'invalid without user_id' do
    record_log = create(:record_log)
    record_log.user_id = nil

    refute record_log.valid?, 'Cannot save record_log without user_id'
    assert_not_nil record_log.errors[:user_id], 'no validation error for user_id present'
  end 

  test 'invalid without scholarship_guide_id' do
    record_log = create(:record_log)
    record_log.scholarship_guide_id = nil

    refute record_log.valid?, 'Cannot save record_log without scholarship_guide_id'
    assert_not_nil record_log.errors[:scholarship_guide_id], 'no validation error for scholarship_guide_id present'
  end 

  test 'invalid without scholarship_name' do
    record_log = create(:record_log)
    record_log.scholarship_name = nil

    refute record_log.valid?, 'Cannot save record_log without scholarship_name'
    assert_not_nil record_log.errors[:scholarship_name], 'no validation error for scholarship_name present'
  end 

  test 'invalid without saved' do
    record_log = create(:record_log)
    record_log.saved = nil

    refute record_log.valid?, 'Cannot save record_log without saved'
    assert_not_nil record_log.errors[:saved], 'no validation error for saved present'
  end 

  test 'invalid without completed' do
    record_log = create(:record_log)
    record_log.completed = nil

    refute record_log.valid?, 'Cannot save record_log without completed'
    assert_not_nil record_log.errors[:completed], 'no validation error for completed present'
  end 

  test 'invalid without completed' do
    record_log = create(:record_log)
    record_log.completed = nil

    refute record_log.valid?, 'Cannot save record_log without completed'
    assert_not_nil record_log.errors[:completed], 'no validation error for completed present'
  end 
end
