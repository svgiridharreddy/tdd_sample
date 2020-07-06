class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    before_action :authenticate_user!
    before_action :configure_permitted_parameters, if: :devise_controller?
    # this is testing pulling request
    protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sing_up,keys: [:user_name,:email,:password,:password_confirmation])
    end
end
