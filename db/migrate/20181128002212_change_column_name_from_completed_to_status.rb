class ChangeColumnNameFromCompletedToStatus < ActiveRecord::Migration[5.2]
  def change
    rename_column :saved_scholarships, :completed, :status
  end
end
