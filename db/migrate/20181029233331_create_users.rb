class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :string
      t.string :email
      t.integer :grad_year
      t.integer :grade_level
      t.string :school
      t.string :gender

      t.timestamps
    end
  end
end
