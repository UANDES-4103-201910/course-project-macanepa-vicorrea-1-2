class HomeController < ApplicationController
  def home
    @comments = Comment.all
  end
end
