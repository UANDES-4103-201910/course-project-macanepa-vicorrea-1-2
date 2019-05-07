class UserProfileController < ApplicationController
  def view
    @user = User.all[0]
    @user_profile = Profile.where(user_id: @user.id)[0]
    @user_posts = Post.where(user_id: @user.id)[0]
  end

  def modify
  end
end
