class FileUpload < ApplicationRecord
  belongs_to :user

  mount_uploader :attachment, AttachmentUploader # Use attachment column for upload info
end
