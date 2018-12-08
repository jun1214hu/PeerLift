class StartedScholarship < ApplicationRecord
  belongs_to :scholarship_guide
  belongs_to :user
  has_many :user_task_items, dependent: :destroy

  include AASM

  aasm do
    state :in_progress, :initial => true
    state :completed
    state :submitted

    event :complete do
      transitions :from => :in_progress, :to => :completed
    end

    event :submit do
      transitions :from => :completed, :to => :submitted
    end

    event :unsubmit do
      transitions :from => :submitted, :to => :completed
    end

    event :incomplete do
      transitions :from => :completed, :to => :in_progress
    end
  end

end
