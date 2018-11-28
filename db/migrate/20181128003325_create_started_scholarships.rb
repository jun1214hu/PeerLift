class CreateStartedScholarships < ActiveRecord::Migration[5.2]
  def change
    create_table :started_scholarships do |t|
      t.integer :user_id
      t.integer :scholarship_guide_id
      t.string :scholarship_guide_name
      t.integer :status

      t.timestamps
    end
    add_index :started_scholarships, :user_id
    add_index :started_scholarships, :scholarship_guide_id
    add_index :started_scholarships, :status
  end
end
