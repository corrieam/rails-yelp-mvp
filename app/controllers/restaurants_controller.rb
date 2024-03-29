class RestaurantsController < ApplicationController
   before_action :set_restaurant, only: [:show]
  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  def index
    @restaurants = Restaurant.all
  end

  def show
  end

  def new
    @restaurant = Restaurant.new
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

   def restaurant_params
      params.require(:restaurant).permit(:name, :address, :phone_number, :category)
    end
end
