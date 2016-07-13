class ApplicationController < ActionController::Base
  helper :all

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_action :configure_permitted_parameters, if: :devise_controller? 
  # before_filter :authenticate_user!
  protect_from_forgery with: :exception
  
  config.time_zone = 'Pacific Time (US & Canada)'
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :name
    devise_parameter_sanitizer.for(:account_update) << :name
  end
end
