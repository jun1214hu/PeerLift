class RecordLog < ApplicationRecord
	validates :user_id,
	:scholarship_guide_id,
	:scholarship_name,
	presence: true
end
