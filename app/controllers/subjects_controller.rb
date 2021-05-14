class SubjectsController < ApplicationController
  def new
  	@subject = Subject.new
  end

  def create
  	subject = Subject.new(subject_params)
  	if subject.save
  		redirect_to '/users'
  	else
  		redirect_to '/new_subject'
  	end
  end

  private

  def subject_params
  	params.require(:subject).permit(:name, :auther)
  end

end
