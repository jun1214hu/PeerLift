json.extract! user_task, :id, :user_id, :scholarship_guide_id, :scholarship_name, :essay_count, :transcript_count, :test_score_count, :test_subjects, :created_at, :updated_at
json.url user_task_url(user_task, format: :json)
