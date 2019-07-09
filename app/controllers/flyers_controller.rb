class FlyersController < ApplicationController
  before_action :authenticate!, except: [:welcome, :index, :new]

  def welcome
  end

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
    @flyer = Flyer.find(params[:id])
  end

  def update
    @flyer = Flyer.find(params[:id])
    if @flyer.update(flyer_params)
      redirect_to flyer_path(@flyer)
    else
      render :edit
    end
  end

  def find
    @flyer = Flyer.find(params[:id])
  end

  private

  def flyer_params
    params.require(:flyer).permit(:user_name, :password, :first_name, :last_name, :occupation, :img_url, :airport_id, :description)
  end
end
