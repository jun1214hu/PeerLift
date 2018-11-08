class User < ApplicationRecord
	has_many :user_tasks
	has_many :scholarship_guides, :through => :user_tasks
end
