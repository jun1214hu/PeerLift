class UserTask < ApplicationRecord
	belongs_to :scholarship_guides
	belongs_to :users
end
