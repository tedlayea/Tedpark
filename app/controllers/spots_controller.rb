class SpotsController < ApplicationController

  def home
    @spot=Spot.new
  end
  def index
    @spots=Spot.all
  end
  def show
    @spot=Spot.find(params[:id])
    session[:spot_id] = @spot.id
    session[:location_name] = @spot.location_name
    session[:latitude] = @spot.latitude
    session[:longitude] = @spot.longitude
  end
  def new
    @spot=Spot.new
  end
  def create
    @spot=current_user.spots.create!(spot_params)
    redirect_to spot_path(@spot)
  end
  def edit
    @spot=Spot.find(params[:id])
  end
  def update
    @spot=Spot.find(params[:id])
    if @spot.user == current_user
      @spot.update(spot_params)
    else
      flash[:alert] = "Only the author of the song can update"
    end
    redirect_to spot_path(@spot)
  end
  def destroy
    @spot=Spot.find(params[:id])
    if @spot.user == current_user
      @spot.destroy
    else
      flash[:alert] = "Only the author of the song can delete"
    end
      redirect_to spots_path
  end
  private
  def spot_params
    params.require(:spot).permit(:location_name,:latitude, :longitude)
  end
end
