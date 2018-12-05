class UserTaskItemsController < ApplicationController
  before_action :set_user_task_item, only: [:update]

  def complete
    task = UserTaskItem.find_by(id: params[:id], user_id: params[:user_id])
    task.complete!
    respond_to do |format|
      format.html { redirect_to request.referrer, notice: 'Completed!' }
    end
  end

  def incomplete
    task = UserTaskItem.find_by(id: params[:id], user_id: params[:user_id])
    task.incomplete!
    respond_to do |format|
      format.html { redirect_to request.referrer, notice: 'Back to in progress!' }
    end
  end

  def add_file
    task = UserTaskItem.find_by(id: params[:id], user_id: params[:user_id])
    task.update(file_id: params[:file_id])
  end

  private

  def task_params
    params.permit(:user_id, :file_given_name)
  end

end
