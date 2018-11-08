class CreateUserTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :user_tasks do |t|
      t.integer :user_id
      t.references :scholarship_guide, foreign_key: true
      t.string :scholarship_name
      t.integer :essay_count
      t.integer :transcript_count
      t.integer :test_score_count
      t.string :test_subjects

      t.timestamps
    end
  end
end
