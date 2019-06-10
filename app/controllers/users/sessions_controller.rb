# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  def create
    user = User.where(email: params[:user][:email]).first
    if not user.nil?
      is_in_blacklist = user.is_in_blacklist
      is_blocked = user.is_in_block_list
    end
    if !is_in_blacklist && !is_blocked
      super
      if not user.nil?
        user.update(last_access: Time.now)
      end
    else
      if is_in_blacklist
        exit_date = user.get_blacklist_entry_date + 1.week.to_i
        if Time.now < exit_date
          redirect_to root_path, alert: "Your account has been suspended until " + exit_date.to_s
        else
          black_to_remove = Blacklist.where(user_id: user.id, exit_date: nil).first
          black_to_remove.update(exit_date: Time.now)
          super
          if not user.nil?
            user.update(last_access: Time.now)
          end
        end
      elsif is_blocked
        redirect_to root_path, alert: "Your account has been blocked."
      end
    end
  end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
