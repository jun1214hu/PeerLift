class AddFileColumnToUserTasks < ActiveRecord::Migration[5.2]
  def change
    add_column :user_task_items, :file, :string
  end
end
