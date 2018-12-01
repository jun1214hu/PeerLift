class CreateFileUploads < ActiveRecord::Migration[5.2]
  def change
    create_table :file_uploads do |t|
      t.integer :user_id
      t.string :given_name
      t.string :attachment

      t.timestamps
    end
    add_index :file_uploads, :user_id
  end
end
