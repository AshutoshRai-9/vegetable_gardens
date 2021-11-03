class ApplicationController < ActionController::Base
    before_action :authenticate_user!
    before_action :configure_permitted_parameters, if: :devise_controller?
    protected
   # protect_from_forgery with: :exception
    #before_filter :store_requested_url!
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:address])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])

  end


end
