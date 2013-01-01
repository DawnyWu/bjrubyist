class HomeController < ApplicationController
  def index
    @users = User.all
    @title = "Home"
    @events = Event.where("date > now()").order(:date)
  end

  def about
  	render :about
  end
end
