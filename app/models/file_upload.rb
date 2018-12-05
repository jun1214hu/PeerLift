class FileUpload < ApplicationRecord
  mount_uploader :attachment, AttachmentUploader # Use attachment column for upload info
end
