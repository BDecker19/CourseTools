class ApplicationController < ActionController::Base
  	protect_from_forgery
	
	before_filter :authenticate_user, :except => [:login, :login_attempt, :logout]
	before_filter :save_login_state, :only => [:login, :login_attempt]


	protected 
		def authenticate_user
			unless session[:user_id]
				redirect_to(:controller => 'sessions', :action => 'login')
				return false
			else
				# set current user object to @current_user object variable
				@current_user = User.find session[:user_id] 
				return true
			end
		end

		def save_login_state
			if session[:user_id]
				redirect_to(:controller => 'sessions', :action => 'home')
				return false
			else
				return true
			end
		end


  private
 
  # Finds the User with the ID stored in the session with the key
  # :current_user_id This is a common way to handle user login in
  # a Rails application; logging in sets the session value and
  # logging out removes it.
  def current_user
    @_current_user ||= session[:current_user_id] &&
      User.find_by_id(session[:current_user_id])
  end

end
