class LoginController < ApplicationController
  def index
    @user = nil
    respond_to do |format|
      format.json { render json: @user.to_json}
      format.html { render 'login'}
    end
  end
end
