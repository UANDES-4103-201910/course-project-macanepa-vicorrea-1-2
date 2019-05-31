class UserProfileController < ApplicationController
  def view
    if(not params[:user_profile_id].nil?)
      user_profile_id =  params[:user_profile_id]
      @user_profile =  Profile.find(user_profile_id)
    elsif(user_signed_in?)
      @user_profile = current_user.profile
    else
      redirect_to root_path
    end
    @user=User.find(@user_profile.user.id)
    @posts=Post.where(user_id:@user.id)
    @posts+=Post.joins(:shared_posts)
    #
    # @user_posts = Profile.find(user_profile_id)
    # @user_posts = Post.where(user_id: User.where(profile_id: user_profile_id)[0])
    # @posts_no_dumpster = Post.where("posts.id NOT IN (?)", Dumpster.pluck(:post_id))

    @vals = Validation.where(user_id: @user_profile.user.id)
    @vals += SharedPost.where(user_id: @user_profile.user.id)
    @vals += Comment.where(user_id: @user_profile.user.id)
    @vals = (@vals.sort_by! &:created_at).reverse
  end

  def modify
    if(params[:user_profile_id]!=nil)
      @user= User.find(params[:user_profile_id])
    else
      @user = User.first
    end
  end
end
