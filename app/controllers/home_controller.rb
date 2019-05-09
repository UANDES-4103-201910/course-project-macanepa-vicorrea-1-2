class HomeController < ApplicationController
  def home


    @posts = Post.all
    @posts_no_dumpster = Post.where("posts.id NOT IN (?)", Dumpster.pluck(:post_id))
    @posts = @posts_no_dumpster

    if(!params[:user_id].nil?)
      @user = User.find(params[:user_id])
      @following_posts = @posts.where("posts.id IN (?)", Follow.where(user_id:@user.id).pluck(:post_id))
    end

    @comments = Comment.where(comment_id: nil)
    @replies = Comment.where.not(comment_id: nil)
  end
end
