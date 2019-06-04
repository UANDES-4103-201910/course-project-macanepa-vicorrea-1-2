class SearchController < ApplicationController
  before_action :check_profile
  def search
    @posts = Post.all.order(updated_at: :desc)
    @users = User.all
    if (params[:search_by] == "name")
      if (params[:input]=="")
        @users = User.all
      else
        @users = User.where("name LIKE (?) or last_name LIKE (?)", "%#{params[:input]}%", "%#{params[:input]}%")
      end
    end


    if (params[:search_by] == "location")
      if (params[:input]=="")
        @users = User.all
      else
        @users = User.joins(:profile).where("city LIKE (?) or country LIKE (?)","%#{params[:input]}%","%#{params[:input]}%")
      end
    end

    @users_name = User.where("name LIKE (?) or last_name LIKE (?)", "%#{params[:input]}%", "%#{params[:input]}%")
    @users_location = User.joins(:profile).where("city LIKE (?) or country LIKE (?)","%#{params[:input]}%","%#{params[:input]}%")
    @posts_content = Post.where("content LIKE (?) or title LIKE (?)","%#{params[:input]}%","%#{params[:input]}%")
    @posts_author = Post.joins(:user).where("name LIKE (?) or last_name LIKE (?)","%#{params[:input]}%","%#{params[:input]}%")

    render("search/search")
  end

end
