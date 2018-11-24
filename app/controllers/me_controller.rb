class MeController < ApplicationController
    before_action :authenticate
    def show
      #@savedscholarships = RecordLog.where(user_id: current_user.id )
      @savedscholarships = RecordLog.where("user_id = ?", current_user.id)
    end
end
