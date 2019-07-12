class MeetupsController < ApplicationController
  before_action :authenticate
  def index
    @meetups = Meetup.all
    @flyers = Flyer.all
  end

  def show
    @meetup = Meetup.find(params[:id])
  end

  def new
    @meetup = Meetup.new
  end

  def create
    @meetup = Meetup.new(meetup_params)
      if @meetup.save
        redirect_to meetup_path(@meetup)
      else
        render :new
      end
  end


  private

  def meetup_params
    params.require(:meetup).permit(:name, :location, :store_hours, :airport_id, :conversation_id)
  end
end
