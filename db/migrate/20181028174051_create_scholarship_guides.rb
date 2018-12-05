class CreateScholarshipGuides < ActiveRecord::Migration[5.2]
  def change
    create_table :scholarship_guides do |t|
      t.string :program_name
      t.string :image_url
      t.string :metric_box1
      t.string :metric_box2
      t.string :metric_box3
      t.string :description_short
      t.string :description_long
      t.integer :app_count
      t.integer :essay_count
      t.integer :transcript_count
      t.integer :resume_count
      t.string :time_estimate
     

      t.timestamps
    end
  end
end
