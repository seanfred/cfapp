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
    devise_parameter_sanitizer.for(:sign_in, :sign_up, :account_update) { |u| u.permit(:first_name,
                                   :last_name, :email, :encrypted_password, :reset_password_token, :avatar_uid,
                                   :avatar_name, :reset_password_sent_at, :remember_created_at, :sign_in_count,
                                   :current_sign_in_at, :last_sign_in_at, :current_sign_in_ip, :last_sign_in_ip,
                                   :created_at, :updated_at, :authentication_token, :confirmation_token,
                                   :confirmed_at, :confirmation_sent_at, :unconfirmed_email, :email_validation_token,
                                   :country_code, :zip, :signup_finalized_at, :born_at, :city, :state, :address1,
                                   :cell_phone, :usa_epay_customer_id) }
  end

end
