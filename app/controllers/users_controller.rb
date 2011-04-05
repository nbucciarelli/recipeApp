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
    #-------------------Profile stuff?????? Ask Patrick
    # @profile = @user.create_profile(params[:profile])
    # if @user.save && @profile.save
    #------------------------------------------
    if @user.save
      redirect_to root_path, :notice => 'Successfully created user'
    else
      render :action => :new
    end
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update_attributes(params[:user])
      redirect_to recipes_path, :notice => 'Updated user information successfully'
    else
      render :action => :edit
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path, :notice => 'Successfully deleted user'
  end

end
