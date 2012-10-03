class ApplicationController < ActionController::Base
  protect_from_forgery
  
  include LoginSystem

  
  prepend_before_filter :login_required
end
