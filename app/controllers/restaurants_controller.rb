class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end
  def update
    if @restaurant.update(restaurant_params)
      redirect_to root_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def new
    @restaurant = Restaurant.new
  end

  def destroy
    @restaurant.destroy!
    redirect_to root_path
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save!
      redirect_to restaurant_path(@restaurant)
    else
      render new:, status: :unprocessable_entity
    end
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
  def restaurant_params
    params.require(:restaurant).permit(:name, :address)
  end
end
