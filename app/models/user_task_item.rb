class UserTaskItem < ApplicationRecord
  belongs_to :user
  belongs_to :task
  belongs_to :started_scholarship
end
