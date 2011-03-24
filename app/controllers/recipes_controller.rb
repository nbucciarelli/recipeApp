class RecipesController < ApplicationController
  before_filter :authenticate, :except => [:index, :show]
  
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
      redirect_to recipes_path, :notice => 'Successfully created new recipe'
    else
      render :action => :new
    end
  end
  
  def edit
    @recipe = Recipe.find(params[:id])
  end
  
  def update
    params[:recipe][:cuisine_ids] ||= []
    params[:recipe][:course_ids] ||= []
    
    @recipe = Recipe.find(params[:id])
    if @recipe.update_attributes(params[:recipe])
      redirect_to recipes_path, :notice => 'Successfully updated recipe'
    else
      render :action => :new
    end
  end
  
  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    redirect_to root_path, :notice => 'Successfully deleted recipe'
  end
  
end
