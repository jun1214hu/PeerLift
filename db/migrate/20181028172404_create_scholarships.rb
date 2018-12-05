class CreateScholarships < ActiveRecord::Migration[5.2]
  def change
    create_table :scholarships do |t|
      t.string :name
      t.string :deadline

      t.timestamps
    
  end
end
