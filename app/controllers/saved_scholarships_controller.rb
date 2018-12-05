class SavedScholarshipsController < ApplicationController
  def create
    @saved_scholarship = SavedScholarship.new(saved_scholarship_params)
    @log_save = RecordLog.new(user_id: params[:user_id], scholarship_guide_id: params[:scholarship_guide_id], scholarship_name: params[:scholarship_name], saved: 1)
    @log_save.save!
    respond_to do |format|
      if @saved_scholarship.save
        format.html { redirect_to request.referrer, notice: 'Saved Scholarship was successfully created.' }
      else
        format.html { redirect_to request.referrer, notice: 'Saved Scholarship was not successfully created.' }
      end
    end
  end

  def destroy
    @saved_scholarship = SavedScholarship.find_by(user_id: params[:user_id], scholarship_guide_id: params[:scholarship_guide_id])
    @log_save = RecordLog.new(user_id: params[:user_id], scholarship_guide_id: params[:scholarship_guide_id], scholarship_name: params[:scholarship_name], deleted: 1)
    @log_save.save!

    @saved_scholarship.destroy
    respond_to do |format|
      format.html { redirect_to request.referrer, notice: 'Saved Scholarship was successfully unsaved.' }
    end
  end

  private

  def saved_scholarship_params
    params.permit(:user_id, :scholarship_guide_id, :scholarship_name)
  end
end