class CuisinesController < ApplicationController
  
  def index
    @cuisines = Cuisine.all
  end
  
  def show
    @cuisine = Cuisine.find(params[:id])
  end
  
  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
  end
  
end
