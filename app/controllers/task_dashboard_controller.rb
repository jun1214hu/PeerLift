class TaskDashboardController < ApplicationController
  def index
  	@user = User.all
  	@user_task = UserTask.all
  end
end
