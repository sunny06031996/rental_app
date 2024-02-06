class ApplicationController < ActionController::Base
	before_action :update_allowed_parameters


  private
  def update_allowed_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |e| e.permit(:role,:email, 
     :password, :password_confirmation)}
  end
end
