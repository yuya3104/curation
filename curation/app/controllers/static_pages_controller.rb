class StaticPagesController < ApplicationController
  def home
    @user = current_user
#    @eventcurations = current_user.eventcurations.build if logged_in?
    if logged_in?
        @mynews = current_user.eventcurations.where(newflag: 1).order(created_at: :desc)
        @myreports = current_user.eventcurations.where(newflag: 0).order(created_at: :desc)
        @news = Eventcuration.where("user_id != ? and newflag == ?", current_user.id, 1).order(created_at: :desc)
        @reports = Eventcuration.where("user_id != ? and newflag == ?", current_user.id, 0).order(created_at: :desc)

    else
        @news = Eventcuration.where(newflag: 1).order(created_at: :desc)
        @reports = Eventcuration.where(newflag: 0).order(created_at: :desc) 
    end

  end
  
  def show
    @user = current_user
    @eventcurations = @user.eventcurations.order(created_at: :desc)
  end
  
  
  
  
end
