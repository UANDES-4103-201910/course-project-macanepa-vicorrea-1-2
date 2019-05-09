class HomeController < ApplicationController
  def home
    @user = User.first
    @posts = Post.all

    # @post_dump = Dumpster.all

    @posts_no_dumpster = Post.where("posts.id NOT IN (?)", Dumpster.pluck(:post_id))
    @posts = @posts_no_dumpster
    @following_posts = @posts.where("posts.id IN (?)", Follow.where(user_id:@user.id).pluck(:post_id))


    puts("WIWIWIWI\n\n\n\n\n")
    puts(@posts_no_dumpster)
    puts("Following")
    puts(@following_posts)
    puts("WIWIWIWI\n\n\n\n\n")

    @comments = Comment.where(comment_id: nil)
    @replies = Comment.where.not(comment_id: nil)
  end
end
