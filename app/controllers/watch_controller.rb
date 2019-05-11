class WatchController < ApplicationController

  def watch
    if(params[:post_id] != nil)
      @posts = Post.find(params[:post_id])
      render("watch/watch")
    end
  end

end

