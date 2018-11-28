class StartedScholarshipsController < ApplicationController

  def start
    if !StartedScholarship.where("user_id = ? AND scholarship_guide_id = ?", current_user.id, started_scholarship_params[:scholarship_guide_id])
      @started_scholarship = StartedScholarship.new(started_scholarship_params)
      @log_save = RecordLog.new(user_id: started_scholarship_params[:user_id], scholarship_guide_id: started_scholarship_params[:scholarship_guide_id], scholarship_name: started_scholarship_params[:scholarship_name], saved: 1)
      @started_scholarship.save!
      respond_to do |format|
        if @started_scholarship.save
          format.html { redirect_to request.referrer, notice: 'Started Scholarship was successfully created.' }
        else
          format.html { redirect_to request.referrer, notice: 'Started Scholarship was not successfully created.' }
        end
      end
    else
      format.html { redirect_to request.referrer, notice: 'Scholarship already saved.' }
  end

  private

  def started_scholarship_params
    params.permit(:user_id, :scholarship_guide_id, :scholarship_name, :status)
  end

end
