class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :string
      t.string :last_name
      t.string :string
      t.string :email
      t.string :string
      t.string :grad_year
      t.string :integer
      t.string :grade
      t.string :integer
      t.string :school
      t.string :city
      t.string :state

      t.timestamps
    end
  end
end
