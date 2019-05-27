class ApplicationController < ActionController::Base

  before_action :configure_permitted_parameters, if: :devise_controller?


  $user_type = 2
  # $current_user = User.find(session["warden.user.user.key"][0][0])

  # def current_user
  #   @current_user ||= session[:current_user_id] && User.find_by_id(session[:current_user_id])
  # end

  def is_user_logged_in?
  #complete this method

  logged_in = current_user
  if current_user then true else redirect_to root_path end
  end

  def google_logged_in
    if session["warden.user.user.key"] then true else false end
  end


  protected

  def configure_permitted_parameters
    added_attrs = [:name, :last_name, :email, :password, :password_confirmation, :remember_me]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
  end

end
