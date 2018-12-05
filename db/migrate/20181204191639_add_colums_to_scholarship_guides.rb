class AddColumsToScholarshipGuides < ActiveRecord::Migration[5.2]
  def change
  	add_column :scholarship_guides, :program_url, :string
  	add_column :scholarship_guides, :location, :string
  	add_column :scholarship_guides, :diversity, :boolean
 	add_column :scholarship_guides, :low_income, :boolean
 	add_column :scholarship_guides, :STEM, :boolean
 	add_column :scholarship_guides, :DACA, :boolean
 	add_column :scholarship_guides, :freshman, :boolean
 	add_column :scholarship_guides, :sophomore, :boolean
 	add_column :scholarship_guides, :junior, :boolean
 	add_column :scholarship_guides, :senior, :boolean
  end
end
