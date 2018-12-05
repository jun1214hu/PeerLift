class CreateUserTaskItems < ActiveRecord::Migration[5.2]
  def change
    create_table :user_task_items do |t|
      t.integer :user_id
      t.integer :task_id
      t.integer :scholarship_id
      t.string :scholarship_name
      t.string :text
      t.string :status
      t.integer :file_id
      t.string :file_given_name

      t.timestamps
    end
    add_index :user_task_items, :user_id
    add_index :user_task_items, :task_id
    add_index :user_task_items, :scholarship_id
    add_index :user_task_items, :file_id
  end
end
