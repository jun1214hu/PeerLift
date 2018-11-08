class ScholarshipGuide < ApplicationRecord
  belongs_to :scholarship
  has_many :user_task
end
