class ScholarshipGuide < ApplicationRecord
  belongs_to :scholarship
  belongs_to :user_task
end
