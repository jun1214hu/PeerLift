class MeController < ApplicationController
    before_action :authenticate
    def show
      @is_there = StartedScholarship.where("user_id = ? AND scholarship_guide_id = ?", 1, 1)
      #@savedscholarships = RecordLog.where(user_id: current_user.id )
      @saved_scholarships = SavedScholarship.where("user_id = ?", current_user.id)
      @incomplete_scholarships = SavedScholarship.where("user_id = ? AND completed = ?", current_user.id, 0)
      @started_scholarships = StartedScholarship.where("user_id = ?", current_user.id)
    end

    def start
      @is_there = StartedScholarship.where("user_id = ? AND scholarship_guide_id = ?", 1, 1)
      if @is_there[0]
        #say it's already there
      else
        @started_scholarship = StartedScholarship.new(user_id: params[:user_id], scholarship_guide_id: params[:scholarship_guide_id], scholarship_name: params[:scholarship_name], status: params[:status])
        @log_save = RecordLog.new(user_id: params[:user_id], scholarship_guide_id: params[:scholarship_guide_id], scholarship_name: params[:scholarship_name], saved: 1)
        @started_scholarship.save!
        respond_to do |format|
          if @started_scholarship.save
            format.html { redirect_to request.referrer, notice: 'Started Scholarship was successfully created.' }
          else
            format.html { redirect_to request.referrer, notice: 'Started Scholarship was not successfully created.' }
          end
        end
      end
  end

  def unsave
    @started_scholarship = StartedScholarship.find_by(user_id: params[:user_id], scholarship_guide_id: params[:scholarship_guide_id])
    @log_save = RecordLog.new(user_id: params[:user_id], scholarship_guide_id: params[:scholarship_guide_id], scholarship_name: params[:scholarship_name], deleted: 1)
    @log_save.save!

    @started_scholarship.destroy
    respond_to do |format|
      format.html { redirect_to request.referrer, notice: 'Saved Scholarship was successfully unsaved.' }
    end
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
