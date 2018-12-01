class MeController < ApplicationController
    before_action :authenticate
    def show
      @is_there = StartedScholarship.where("user_id = ? AND scholarship_guide_id = ?", 1, 1)
      #@savedscholarships = RecordLog.where(user_id: current_user.id )
      @saved_scholarships = SavedScholarship.where("user_id = ?", current_user.id)
      @started_scholarships = StartedScholarship.where("user_id = ?", current_user.id)
      @tasks_reference = []
      @started_scholarships.each do |s|
        @tasks_reference += Task.where("scholarship_id = ?", s.scholarship_guide_id).pluck(:id)
      end
    end

    def start
      @is_there = StartedScholarship.where("user_id = ? AND scholarship_guide_id = ?", params[:user_id], params[:scholarship_guide_id])
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

  def unsave_from_saved
    @saved_scholarship = SavedScholarship.find_by(user_id: params[:user_id], scholarship_guide_id: params[:scholarship_guide_id])
    #@log_save = RecordLog.new(user_id: params[:user_id], scholarship_guide_id: params[:scholarship_guide_id], scholarship_name: params[:scholarship_name], deleted: 1)
    #@log_save.save!

    @saved_scholarship.destroy
    respond_to do |format|
      format.html { redirect_to request.referrer, notice: 'Saved Scholarship was successfully unsaved.' }
    end
  end
  #delete 'me' => 'me#unstart', as: :unsave_scholarship_me_started

  def unstart
    @started_scholarship = StartedScholarship.find_by(user_id: params[:user_id], scholarship_guide_id: params[:scholarship_guide_id])
    #@log_save = RecordLog.new(user_id: params[:user_id], scholarship_guide_id: params[:scholarship_guide_id], scholarship_name: params[:scholarship_name], deleted: 1)
    #@log_save.save!

    @started_scholarship.destroy
    respond_to do |format|
      format.html { redirect_to request.referrer, notice: 'Saved Scholarship was successfully unsaved.' }
    end
  end

  def complete
    scholarship = StartedScholarship.find_by(user_id: params[:user_id], scholarship_guide_id: params[:scholarship_guide_id])
    scholarship.complete!
    respond_to do |format|
      format.html { redirect_to request.referrer, notice: 'Completed!' }
    end
  end

  def incomplete
    scholarship = StartedScholarship.find_by(user_id: params[:user_id], scholarship_guide_id: params[:scholarship_guide_id])
    scholarship.incomplete!
    respond_to do |format|
      format.html { redirect_to request.referrer, notice: 'Back to In Progress!' }
    end
  end

  def submit
    scholarship = StartedScholarship.find_by(user_id: params[:user_id], scholarship_guide_id: params[:scholarship_guide_id])
    scholarship.submit!
    respond_to do |format|
      format.html { redirect_to request.referrer, notice: 'Submitted!' }
    end
  end

  def unsubmit
    scholarship = StartedScholarship.find_by(user_id: params[:user_id], scholarship_guide_id: params[:scholarship_guide_id])
    scholarship.unsubmit!
    respond_to do |format|
      format.html { redirect_to request.referrer, notice: 'Back to Completed!' }
    end
  end

    private

    def me_params
      params.permit(:user_id, :scholarship_guide_id, :scholarship_name, :completed, :deleted)
    end

end
