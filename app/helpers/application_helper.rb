module ApplicationHelper
end

module LoginSystem 
	def login_from_cookie
		user = User.find_by_remember_token(cookies[:auth_token])
		if user && user.remember_token?
			session['user_id'] = user.id
			set_current_user(user)
		end
	end

	def get_current_user
		if @user.nil? && session['user_id']
			@user = User.find session['user_id'], :include => :preference
		end
		@prefs = @user.prefs unless @user.nil
		@user
	end

	def set_current_user(user)
		@user = user
	end
end