class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.integer :user_id
      t.integer :scholarship_id
      t.string :scholarship_name
      t.string :text
      t.string :status
      t.string :file

      t.timestamps
    end
    add_index :tasks, :user_id
    add_index :tasks, :scholarship_id
  end
end
