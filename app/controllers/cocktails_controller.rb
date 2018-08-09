class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    @cocktail.save

    redirect_to cocktail_path(@cocktail)
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end


  private

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end

end

  # def create
  #   @restaurant = Restaurant.new(params[:restaurant])
  #   @restaurant.save
  #   # Will raise ActiveModel::ForbiddenAttributesError
  # end

  # def show
  #   @restaurant = Restaurant.find(params[:id])
  # end
