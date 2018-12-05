class UserTaskItem < ApplicationRecord
  belongs_to :user
  belongs_to :task
  belongs_to :started_scholarship

  include AASM

  aasm :column => 'status'do
    state :in_progress, :initial => true
    state :completed

    event :complete do
      transitions :from => :in_progress, :to => :completed
    end

    event :incomplete do
      transitions :from => :completed, :to => :in_progress
    end
  end

end
