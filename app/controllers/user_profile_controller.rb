class UserProfileController < ApplicationController
  def view
    if(not params[:user_profile_id].nil?)
      user_profile_id=params[:user_profile_id]
    elsif(user_signed_in?)
      user_profile_id = current_user.id
    else
      redirect_to root_path
    end

    @user_profile = Profile.where(id: user_profile_id)[0]
    @user_posts = Post.where(id: user_profile_id)[0]
    # @posts_no_dumpster = Post.where("posts.id NOT IN (?)", Dumpster.pluck(:post_id))

    @vals = Validation.where(id: user_profile_id)
    @vals += SharedPost.where(id: user_profile_id)
    @vals += Comment.where(id: user_profile_id)
  end

  def modify
    if(params[:user_profile_id]!=nil)
      @user= User.find(params[:user_profile_id])
    else
      @user = User.first
    end
  end
end
