class CoursesController < ApplicationController
  before_filter :authenticate

  def index
    @courses = Course.all
  end

  def show
    @course = Course.find(params[:id])
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.create(params[:course])
    if @course.save!
      redirect_to courses_path, :notice => 'Successfully created course.'
    else
      render :new
    end
  end

  def edit
    @course = Course.find(params[:id])
  end

  def update
    @course = Course.find(params[:id])
    if @course.update_attributes(params[:course])
      redirect_to courses_path, :notice => 'Successfully updated course.'
    else
      render :edit
    end
  end

  def destroy
    @course = Course.find(params[:id])
    @course.destroy
    redirect_to courses_path, :notice => 'Successfully deleted course.'
  end
end
