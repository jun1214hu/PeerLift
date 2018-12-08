class AddStartedSholarshipIdToUserTaskItemsTable < ActiveRecord::Migration[5.2]
  def change
    add_column :user_task_items, :started_scholarship_id, :integer
  end
end
