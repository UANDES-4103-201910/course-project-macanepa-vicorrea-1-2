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

    @shared_posts= SharedPost.where(user_id:@user_profile.id).pluck(:post_id)
    @posts = Post.where(user_id:@user.id).or(Post.where(id: @shared_posts))
    @posts = filter_posts(@posts)

    posts_in_dumpster_ids = Dumpster.where(exit_date:nil).pluck(:post_id)
    @vals = Validation.where(user_id: @user_profile.user.id).where.not(post_id:posts_in_dumpster_ids)
    @vals += SharedPost.where(user_id: @user_profile.user.id).where.not(post_id:posts_in_dumpster_ids)
    @vals += Comment.where(user_id: @user_profile.user.id).where.not(post_id:posts_in_dumpster_ids)
    @vals = (@vals.sort_by! &:created_at).reverse
  end

  def modify
      @user = current_user
  end
end
