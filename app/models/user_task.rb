class UserTask < ApplicationRecord
	has_many :scholarship_guides
	belongs_to :users
end
