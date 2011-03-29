class CuisinesController < ApplicationController
  before_filter :authenticate

  def index
    @cuisines = Cuisine.all
  end
  
  def show
    @cuisine = Cuisine.find(params[:id])
  end
  
  def new
    @cuisine = Cuisine.new
  end
  
  def create
    @cuisine = Cuisine.create(params[:cuisine])
    
    if @cuisine.save
      redirect_to cuisines_path, :notice => 'Successfully created new cuisine'
    else
      render :action => :new
    end
  end
  
  def edit
    @cuisine = Cuisine.find(params[:id])
  end
  
  def update
    @cuisine = Cuisine.find(params[:id])
    if @cuisine.update_attributes(params[:cuisine])
      redirect_to cuisines_path, :notice => 'Successfully updated cuisine'
    else
      render :action => :new
    end
  end
  
  def destroy
    @cuisine = Cuisine.find(params[:id])
    @cuisine.destroy
    redirect_to cuisines_path, :notice => 'Successfully deleted cuisine'
  end
end
