class HomeController < ApplicationController
  def home


    @posts = Post.all
    if(Dumpster.where(exit_date: nil).length > 0)
      @posts_no_dumpster = Post.where("posts.id NOT IN (?)", Dumpster.pluck(:post_id))
      @posts = @posts_no_dumpster
    end
    @posts = @posts.order(created_at: :desc)
    if(user_signed_in?)
        @following_posts = @posts.where("posts.id IN (?)", Follow.where(user_id:current_user.id).pluck(:post_id))
        @following_posts = @following_posts.order(updated_at: :desc)
    end

    @comments = Comment.where(comment_id: nil)
    @replies = Comment.where.not(comment_id: nil)
  end
end