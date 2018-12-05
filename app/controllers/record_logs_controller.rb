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

  def update
    #@record_log = RecordLog.where("user_id = ? AND scholarship_guide_id = ?", record_log_params[:user_id], record_log_params[:scholarship_guide_id])
    @record_log = RecordLog.find_by(user_id: params[:user_id], scholarship_guide_id: params[:scholarship_guide_id])

    respond_to do |format|
      if @record_log.update(saved: record_log_params[:saved], previous_save: 1, completed: 0)
        @record_log.save
        format.html { redirect_to request.referrer, notice: 'Record Log was successfully updated.' }
      else
        format.html { redirect_to request.referrer, notice: 'Record Log was not successfully updated.' }
      end
    end
  end

  def destroy
    @record_log = RecordLog.find_by(user_id: params[:user_id], scholarship_guide_id: params[:scholarship_guide_id])

    @record_log.destroy
    respond_to do |format|
      format.html { redirect_to request.referrer, notice: 'Record was successfully unsaved.' }
    end
  end

  private

  def record_log_params
    params.permit(:user_id, :scholarship_guide_id, :scholarship_name, :saved, :completed, :previous_save)
  end

end
