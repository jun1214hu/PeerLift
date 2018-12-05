class CreateRecordLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :record_logs do |t|
      t.integer :user_id
      t.integer :scholarship_guide_id
      t.string :scholarship_name
      t.integer :saved
      t.integer :completed
      t.integer :previous_save

      t.timestamps
    end
    add_index :record_logs, :user_id
    add_index :record_logs, :scholarship_guide_id
  end
end
