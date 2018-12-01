class Task < ApplicationRecord
  mount_uploader :file, AttachmentUploader # Use attachment column for upload info

  validates :text,
  :scholarship_id,
  presence: true

  include AASM

  aasm :column => 'status' do
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
