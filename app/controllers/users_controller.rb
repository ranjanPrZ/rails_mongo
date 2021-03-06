class UsersController < ApplicationController

	def index
		@users = User.all
		byebug
		@subject = User.last.subjects
	end

	def new
		@user = User.new
	end

	def create
		user = User.new(user_params)
		if user.save
			redirect_to '/users'
		else
			redirect_to 'user'
		end
	end

	private

	def user_params
		params.require(:user).permit(:name, :email)
	end
end