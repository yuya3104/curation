class EventcurationsController < ApplicationController

  before_action :logged_in_user, only: [:create]
  
  def new
    @eventcuration = Eventcuration.new
  end
  
  def create
    @eventcuration = current_user.eventcurations.build(eventcuration_params)
    if @eventcuration.save
      flash[:success] = "まとめが投稿されました。"
      redirect_to root_url
    else
      render 'static_pages/home'
    end
  end
  
  def show
    @article = Eventcuration.find(params[:id])
  end
  
  
  
  private
  def eventcuration_params
    params.require(:eventcuration).permit(:date, :content, :newflag, :title, :content, :picture)
  end
end
