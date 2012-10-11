class HomeController < ApplicationController
	def home
	end
	
	def signup
		@user = User.new
	end

	def create
		@user = User.new(params[:user])
		if @user.save
		  redirect_to @user
		else
		  render 'signup'
		end
	end
end
