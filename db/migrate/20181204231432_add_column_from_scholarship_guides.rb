class AddColumnFromScholarshipGuides < ActiveRecord::Migration[5.2]
  def change
  	remove_column :scholarship_guides, :diversity, :boolean
 	remove_column :scholarship_guides, :low_income, :boolean
 	remove_column :scholarship_guides, :STEM, :boolean
 	remove_column :scholarship_guides, :DACA, :boolean
 	remove_column :scholarship_guides, :freshman, :boolean
 	remove_column :scholarship_guides, :sophomore, :boolean
 	remove_column :scholarship_guides, :junior, :boolean
 	remove_column :scholarship_guides, :senior, :boolean
  end
end
