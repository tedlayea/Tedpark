class FavouritesController < ApplicationController
  def index
    @favourites=Favourite.all
  end
  def show
    @favourite=Favourite.find(params[:id])
  end
  def new
    @favourite=Favourite.new
  end
  def create
    @spot=session[:id]
    @favourite=Favourite.create!(location_name: session[:location_name], latitude: session[:latitude], longitude: session[:longitude], nick_name: favourite_params )
    redirect_to favourites_path
  end
  def edit
    @favourite=Favourite.find(params[:id])
  end
  def update
    @favourite=Favourite.find(params[:id])
    @favourite.update(favourite_params)
    redirect_to favourite_path(@favourite)
  end
  def destroy
    @favourite = Favourite.find(params[:id])
    @favourite.destroy
    redirect_to favourites_path
  end
  private
  def favourite_params
    params.require(:favourite).permit(:nick_name)
  end
end
