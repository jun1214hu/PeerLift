json.extract! scholarship_guide, :id, :program_name, :image_url, :metric_box1, :metric_box2, :metric_box3, :description_short, :description_long, :app_count, :essay_count, :transcript_count, :resume_count, :time_estimate, :created_at, :updated_at
json.url scholarship_guide_url(scholarship_guide, format: :json)
