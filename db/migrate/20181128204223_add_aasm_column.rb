class AddAasmColumn < ActiveRecord::Migration[5.2]
  def change
    add_column :started_scholarships, :aasm_state, :string
  end
end
