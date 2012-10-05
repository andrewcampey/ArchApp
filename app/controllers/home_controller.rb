class HomeController < ApplicationController
	#before_filter :login_from_cookie
  def home
  end
  
  def newuser
	@user = User.new
  end
end
