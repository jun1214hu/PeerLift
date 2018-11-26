class MeController < ApplicationController
    before_action :authenticate
    def show
      #@savedscholarships = RecordLog.where(user_id: current_user.id )
      @completed_scholarships = SavedScholarship.where("user_id = ? AND completed = ?", current_user.id, 1)
      @incomplete_scholarships = SavedScholarship.where("user_id = ? AND completed = ?", current_user.id, 0)
    end

    def complete
      #@record_log = RecordLog.where("user_id = ? AND scholarship_guide_id = ?", record_log_params[:user_id], record_log_params[:scholarship_guide_id])
      @complete_scholarship = SavedScholarship.find_by(user_id: me_params[:user_id], scholarship_guide_id: params[:scholarship_guide_id])

      respond_to do |format|
        if @complete_scholarship.update(completed: 1)
          @complete_scholarship.save
          format.html { redirect_to request.referrer, notice: 'Scholarship marked as completed.' }
        else
          format.html { redirect_to request.referrer, notice: 'Unable to mark scholarship as completed.' }
        end
      end
    end

    def not_done
      #@record_log = RecordLog.where("user_id = ? AND scholarship_guide_id = ?", record_log_params[:user_id], record_log_params[:scholarship_guide_id])
      @not_done_scholarship = SavedScholarship.find_by(user_id: me_params[:user_id], scholarship_guide_id: params[:scholarship_guide_id])

      respond_to do |format|
        if @not_done_scholarship.update(completed: 0)
          @not_done_scholarship.save
          format.html { redirect_to request.referrer, notice: 'Scholarship marked as not done.' }
        else
          format.html { redirect_to request.referrer, notice: 'Unable to mark scholarship as not done.' }
        end
      end
    end

    private

    def me_params
      params.permit(:user_id, :scholarship_guide_id, :scholarship_name, :completed, :deleted)
    end

end
