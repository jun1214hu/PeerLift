json.extract! file_upload, :id, :user_id, :given_name, :attachment, :created_at, :updated_at
json.url file_upload_url(file_upload, format: :json)
