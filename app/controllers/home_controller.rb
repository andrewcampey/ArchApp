class HomeController < ApplicationController
	def home
	end
	
	def signup
		@user = User.new
	end

	def create
		@organisation = Organisation.new(params[:organisation])
		@organisation.save
		
		p = params[:user]
		p[:organisation_id] = @organisation.id
		@user = User.new(p)
		if @user.save
		  redirect_to '/signin'
		else
		  render 'signup'
		end
	end
end
