class CommentsController < ApplicationController
  before_filter :load_recipe, :except => :destroy
  before_filter :authenticate, :only => :destroy

  def index
    @recipe = Recipe.find(params[:recipe_id])
    @comments = @recipe.comments.all
  end

  def show
    @recipe = Recipe.find(params[:id])
    @comment = @recipe.comment.find(params[:recipe_id])
  end

  def create
    @comment = @recipe.comment.new(params[:id])
    if @comment.save
      redirect_to @recipe, :notice => 'Thank you for your comment!'
    else
      redirect_to @recipe, :alert => 'Unable to add comment :('
    end
  end

  def destroy
    @recipe = current_user.recipes.find(params[:recipe_id])
    @comment = @recipe.comments.find(params[:id])
    @comment.destroy
      redirect_to @recipe, :notice => 'Comment successfully deleted'
  end

  private
    def load_recipe
      @recipe = Recipe.find(params[:recipe_id])
    end
end
