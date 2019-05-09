class SearchController < ApplicationController
  def search
    @posts = Post.all.order(updated_at: :desc)
    render("search/search")
  end
end
