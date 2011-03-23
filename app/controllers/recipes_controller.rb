class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end
  
  def show
    @recipe = Recipe.find(params[:id])
  end
  
  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.create(params[:recipe])
    @recipe.published_at = DateTime.now
    
    if @recipe.save
      redirect_to recipes_path
    else
      render :action => :new
    end
  end
  
  def edit
    @recipe = Recipe.find(params[:id])
  end
  
  def update
    @recipe = Recipe.find(params[:id])
    if @recipe.update_attributes(params[:recipe])
      redirect_to recipes_path
    else
      render :action => :new
    end
  end
  
  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
  end
  
end
