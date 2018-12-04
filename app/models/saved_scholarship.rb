class SavedScholarship < ApplicationRecord

	validates :user_id,
	:scholarship_guide_id,
  presence: true
end
