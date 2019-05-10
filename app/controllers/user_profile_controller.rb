class UserProfileController < ApplicationController
  def view
    user=1
    if(!params[:user_id].nil?)
      user=params[:user_id]
    end
    @user_profile = Profile.where(user_id: user)[0]
    @user_posts = Post.where(user_id: user)[0]
    @posts_no_dumpster = Post.where("posts.id NOT IN (?)", Dumpster.pluck(:post_id))

    @vals = Validation.where(user_id: user)
    @vals += SharedPost.where(user_id: user)
  end

  def modify
    if(params[:user_id]!=nil)
      @user= User.find(params[:user_id])
    else
      @user = User.first
    end
  end
end
