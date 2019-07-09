class MeetupsController < ApplicationController
  def index
    @meetups = Meetup.all
    @flyers = Flyer.all
  end

  def show
    @meetup = Meetup.find(params[:id])
  end

end
