class WatchController < ApplicationController

  def watch
    if(params[:post_id] != nil)
      @posts = Post.find(params[:post_id])

      in_dumpster = Dumpster.where(post_id:@posts.id).where(exit_date: nil).length>0
      if in_dumpster
        if not (user_signed_in? && (not current_user.admin.nil?))
          redirect_to root_path, alert: "You don't have the privilages to see this post"
        end
      else
      render("watch/watch")
      end
    end
  end

end