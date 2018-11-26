class CreateSavedScholarships < ActiveRecord::Migration[5.2]
  def change
    create_table :saved_scholarships do |t|
      t.integer :user_id
      t.integer :scholarship_guide_id
      t.string :scholarship_name
      t.integer :completed

      t.timestamps
    end
    add_index :saved_scholarships, :user_id
    add_index :saved_scholarships, :scholarship_guide_id
  end
end
