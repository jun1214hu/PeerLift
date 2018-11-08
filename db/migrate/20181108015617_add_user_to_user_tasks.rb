class AddUserToUserTasks < ActiveRecord::Migration[5.2]
  def change
  	remove_column :user_tasks, :user_id, :integer
  	remove_column :user_tasks, :scholarship_id, :integer
  	add_reference :user_tasks, :user, foreign_key: true
  	add_reference :user_tasks, :scholarship_guide, foreign_key: true
  end
end
