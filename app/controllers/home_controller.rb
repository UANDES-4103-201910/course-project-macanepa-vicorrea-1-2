class HomeController < ApplicationController
  before_action :check_profile
  def home
    @posts = Post.all
    @posts = filter_posts(@posts)
    @posts = @posts.order(created_at: :desc)
    if(user_signed_in?)
        @following_posts = @posts.where("posts.id IN (?)", Follow.where(user_id:current_user.id).pluck(:post_id))
        @following_posts = @following_posts.order(updated_at: :desc)
    end

    @comments = Comment.where(comment_id: nil)
    @replies = Comment.where.not(comment_id: nil)
  end
end