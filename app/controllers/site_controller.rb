class SiteController < ApplicationController
	before_filter :checkloggedin

  def dashboard
  end
  
  def settings
  end
  
  def clientlist
  end
  
  def joblist
  end
  
  def timesheet
  end
  
  def invoicing
  end
  
	def checkloggedin
		if signed_in?
			#Ok. User can continue
		else
			redirect_to :controller => 'home', :action => 'home'
		end
	end
end