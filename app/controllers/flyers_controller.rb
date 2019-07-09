class FlyersController < ApplicationController

  def index
    @flyers = Flyer.all
  end

  def show
    @flyer = Flyer.find(params[:id])
  end

  def new
    @flyer = Flyer.new
  end

  def create
    @flyer = Flyer.create(flyer_params)
    if @flyer.save
      redirect_to flyer_path(@flyer)
    else
      render :new
    end
  end

  def edit

  end

  private

  def flyer_params
    params.require(:flyer).permit(:user_name, :password_digest, :first_name, :last_name, :occupation, :description, :img_url, :airport_id)
  end
end
