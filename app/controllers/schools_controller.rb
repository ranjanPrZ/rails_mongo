class SchoolsController < ApplicationController
  def index
  end

  def new
  	@school = School.new
  end

  def create
  	school = School.new(school_params)
  	byebug
  end

  def destroy
  end

  private

  def school_params
  	params.require(:school).permit(:name)
  end
end
