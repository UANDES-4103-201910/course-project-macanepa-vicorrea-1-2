class SearchController < ApplicationController
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


    render("search/search")
  end
end
