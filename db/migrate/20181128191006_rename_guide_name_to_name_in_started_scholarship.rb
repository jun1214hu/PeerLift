class RenameGuideNameToNameInStartedScholarship < ActiveRecord::Migration[5.2]
  def change
    rename_column :started_scholarships, :scholarship_guide_name, :scholarship_name
  end
end
