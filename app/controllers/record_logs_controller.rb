class RecordLogsController < ApplicationController
  def create
    @record_log = RecordLog.new(record_log_params)

    respond_to do |format|
      if @record_log.save
        format.html { redirect_to request.referrer, notice: 'Record Log was successfully created.' }
      else
        format.html { redirect_to request.referrer, notice: 'Record Log was not successfully created.' }
      end
    end
  end

  private

  def record_log_params
    params.permit(:user_id, :scholarship_guide_id, :scholarship_name, :saved, :completed, :previous_save)
  end

end
