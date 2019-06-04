class ApplicationController < ActionController::Base

  before_action :configure_permitted_parameters, if: :devise_controller?

  def is_user_logged_in?
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

  def check_profile
    if user_signed_in? && current_user.profile.nil?
      redirect_to new_profile_path, alert: "First you have to create a profile."
    end
  end

  def filter_posts(posts)
    if(Dumpster.where(exit_date: nil).length > 0)
      posts = posts.where("posts.id NOT IN (?)", Dumpster.where(exit_date: nil).pluck(:post_id))
    end
    return posts
  end

end
