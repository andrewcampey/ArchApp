class SiteController < ApplicationController
before_filter :checkloggedin

  def dashboard
	#@context = current_user.contexts(true)
  end
  
  def checkloggedin
	if signed_in?
		#Ok. User can continue
	else
		redirect_to :controller => 'home', :action => 'home'
	end
	
  end
end
