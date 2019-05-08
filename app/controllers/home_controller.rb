class HomeController < ApplicationController
  def home
    @user = User.first
    @posts = Post.all

    # @post_dump = Dumpster.all

    @posts_no_dumpster = Post.joins(:dumpster)
    @posts_no_dumpster = Post.joins(:dumpster)
    # Event.find(:all, :conditions => ["events.id NOT IN (?)", @user.event_ids])

    puts("WIWIWIWI\n\n\n\n\n")
    puts(@posts_no_dumpster)
    puts("WIWIWIWI\n\n\n\n\n")

    @comments = Comment.where(comment_id: nil)
    @replies = Comment.where.not(comment_id: nil)
  end
end
