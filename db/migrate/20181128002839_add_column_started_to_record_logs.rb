class AddColumnStartedToRecordLogs < ActiveRecord::Migration[5.2]
  def change
    add_column :record_logs, :started, :integer
  end
end
