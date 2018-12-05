class DeleteScholarshipsTable < ActiveRecord::Migration[5.2]
  def change
    remove_reference :scholarship_guides, :scholarships, foreign_key: true	   
    drop_table :scholarships
  end
end
