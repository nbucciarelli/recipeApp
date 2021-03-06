class RecipesController < ApplicationController
  before_filter :authenticate, :except => [:index, :show, :list]

  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find(params[:id])
    @recipe_comment = @recipe.comments.new
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = current_user.recipes.new(params[:recipe])
    @recipe.published_at = DateTime.now

    if @recipe.save
      redirect_to recipes_path, :notice => 'Successfully created new recipe.'
    else
      render :action => :new
    end
  end

  def edit
    @recipe = current_user.recipes.find(params[:id])
  end

  def update
    params[:recipe][:cuisine_ids] ||= []
    params[:recipe][:course_ids] ||= []

    @recipe = current_user.recipes.find(params[:id])
    if @recipe.update_attributes(params[:recipe])
      redirect_to my_recipes_path, :notice => 'Successfully updated recipe.'
    else
      render :action => :edit
    end
  end

  def destroy
    @recipe = current_user.recipes.find(params[:id])
    @recipe.destroy
    redirect_to my_recipes_path, :notice => 'Successfully deleted recipe.'
  end

  def my_recipes
  end

  def list
    @recipes = Recipe.all
  end
end
