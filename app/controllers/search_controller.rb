class SearchController < ApplicationController
  before_action :check_profile
  def search

    @posts = Post.all.order(created_at: :desc)
    @posts = filter_posts(@posts)

    @users_name = User.where("name LIKE (?) or last_name LIKE (?)", "%#{params[:input]}%", "%#{params[:input]}%")
    @users_location = User.joins(:profile).where("city LIKE (?) or country LIKE (?)","%#{params[:input]}%","%#{params[:input]}%")

    @posts_content = Post.where("content LIKE (?) or title LIKE (?)","%#{params[:input]}%","%#{params[:input]}%")
    @posts_content = filter_posts(@posts_content)

    @posts_author = Post.joins(:user).where("name LIKE (?) or last_name LIKE (?)","%#{params[:input]}%","%#{params[:input]}%")
    @posts_author = filter_posts(@posts_author)

    render("search/search")
  end

end
