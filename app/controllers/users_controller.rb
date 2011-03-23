class UsersController < ApplicationController
  layout 'application'
  
  def show
    @user = User.find(params[:id])
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.create(params[:user])
    if @user.save
      redirect_to recipes_path, :notice => 'User successfully created!'
    else
      render :action => :new
    end
  end
  
  def edit
    @user = User.find(params[:id])
  end
  
  def updatw
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      redirect_to recipes_path, :notice => 'Updated user information successfully.'
    else
      render :action => :edit
    end
  end
end
