class RestaurantsController < ApplicationController
  # before_action :find_restaurant

  def index
    # GET /restaurants
    @restaurants = Restaurant.all
  end

  def show
    # GET /restaurants/:id
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
    # GET /restaurants/new
  end

  def create
    # POST /restaurants
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    redirect_to restaurant_path(@restaurant)
  end

  # def edit          # GET /restaurants/:id/edit
  # end

  # def update        # PATCH /restaurants/:id
  # end

  # def destroy       # DELETE /restaurants/:id
  # end

  private

  # def find_restaurant
  #   @restaurant = Restaurant.find(params[:id])
  # end

  def restaurant_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:restaurant).permit(:name, :address, :category)
  end
end
