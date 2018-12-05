class UserTaskItemsController < ApplicationController
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
    task.update(file_given_name: params[:user_id])
  end

end
