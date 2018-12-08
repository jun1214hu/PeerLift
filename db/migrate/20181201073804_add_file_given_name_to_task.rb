class AddFileGivenNameToTask < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :file_given_name, :string
  end
end
