class ScholarshipGuide < ApplicationRecord
  has_many :started_scholarships, dependent: :destroy
  has_many :saved_scholarships, dependent: :destroy

  scope :recent, -> { where('created_at > ?', 1.week.ago) }
  validates :program_name, :image_url, :metric_box1, :metric_box2,
  :metric_box3,
  :description_short,
  :description_long,
  :app_count,
  :essay_count,
  :transcript_count,
  :resume_count,
  :time_estimate,
  presence: true
end
