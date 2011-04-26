class UsersController < ApplicationController
  before_filter :authenticate, :except => [:new, :create, :show]
  layout 'application'

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(params[:user])
    if @user.save!
      redirect_to root_path, :notice => 'Successfully created user'
    else
      render :new
    end
  end

  def edit
    # does not take in to account if admin is trying to change details of other users.
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update_attributes(params[:user])
      redirect_to root_path, :notice => 'Updated user information successfully'
    else
      render :edit
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path, :notice => 'Successfully deleted user'
  end

end
