class RemoveIndexFromGuides < ActiveRecord::Migration[5.2]
  def change
    remove_index :scholarship_guides, :scholarship_id
    remove_column :scholarship_guides, :scholarship_id
  end
end
