class RestaurantsController < ApplicationController
def index
    @restaurants = Restaurant.all
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render "new", status: :unprocessable_entity
    end
  end

  def new
    @restaurant = Restaurant.new
  end

  def edit
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def update
  end

  def destroy
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
