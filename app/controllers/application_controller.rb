class ApplicationController < ActionController::Base
	layout :layout_by_resource
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:username, :email,:password, :remember_me, :password_confirmation) }
  end

  def layout_by_resource
    if devise_controller?
      "login"
    else
      "application"
    end
  end
end
