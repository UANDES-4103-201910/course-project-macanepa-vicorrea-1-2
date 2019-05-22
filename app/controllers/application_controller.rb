class ApplicationController < ActionController::Base

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

end
