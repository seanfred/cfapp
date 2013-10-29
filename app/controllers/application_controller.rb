class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session
  before_filter :configure_permitted_parameters, if: :devise_controller?
  before_filter :check_auth_token

 	def check_auth_token
 		if params[:auth_token]
 			@user = User.find_by_authentication_token(params[:auth_token])
 			if @user
 				sign_in("user", @user)
 			end
 		end
 	end

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up)
  end

end
