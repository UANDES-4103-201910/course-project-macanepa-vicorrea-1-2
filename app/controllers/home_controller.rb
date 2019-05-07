class HomeController < ApplicationController
  def home
    @posts = Post.all
    @comments = Comment.where(comment_id: nil)
    @replies = Comment.where.not(comment_id: nil)
  end
end
