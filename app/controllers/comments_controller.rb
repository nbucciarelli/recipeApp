class CommentsController < ApplicationController
  before_filter :load_recipe, :excerpt => :destroy
  before_filter :authenticate, :only => :destroy
  
  def create
    @comment = @recipe.comments.new(params[:comment])
    if @comment.save
      redirect_to @recipe, :notice => 'Thanks for your comment'
    else
      redirect_to @recipe, :alert => 'Unable to add comment'
    end
  end
  
  def destroy
    @recipe = current_user.recipes.find(params[:recipe_id])
    @comment = @recipe.comments.find(params[:id])
    @comment.destroy
    redirect_to @recipe, :notice => 'Comment deleted'
  end
  
  private
    def load_recipe
      @recipe = Recipe.find(params[:recipe_id])
    end
end
