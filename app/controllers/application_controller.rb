class ApplicationController < ActionController::Base
  protect_from_forgery
  
  include LoginSystem
  helper_method :current_user, :prefs
  
  prepend_before_filter :login_required
end
