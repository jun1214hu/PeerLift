class SavedScholarship < ApplicationRecord
	belongs_to :user
	belongs_to :scholarship_guide

	validates :user_id,
	:scholarship_guide_id,
  presence: true
end
