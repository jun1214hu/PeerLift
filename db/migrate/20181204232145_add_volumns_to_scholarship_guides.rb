class AddVolumnsToScholarshipGuides < ActiveRecord::Migration[5.2]
  def change
  	add_column :scholarship_guides, :diversity, :integer
 	add_column :scholarship_guides, :low_income, :integer
 	add_column :scholarship_guides, :STEM, :integer
 	add_column :scholarship_guides, :DACA, :integer
 	add_column :scholarship_guides, :freshman, :integer
 	add_column :scholarship_guides, :sophomore, :integer
 	add_column :scholarship_guides, :junior, :integer
 	add_column :scholarship_guides, :senior, :integer
  end
end
