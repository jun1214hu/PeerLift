class StartedScholarship < ApplicationRecord
  include AASM

  aasm do
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
