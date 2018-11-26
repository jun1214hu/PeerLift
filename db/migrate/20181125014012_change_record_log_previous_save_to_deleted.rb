class ChangeRecordLogPreviousSaveToDeleted < ActiveRecord::Migration[5.2]
  def change
    rename_column :record_logs, :previous_save, :deleted
  end
end
