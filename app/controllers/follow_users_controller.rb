class FollowUsersController < ApplicationController
  before_action :set_follow_user, only: [:show, :edit, :update, :destroy]

  # GET /follow_users
  # GET /follow_users.json
  def index
    @follow_users = FollowUser.all
  end

  # GET /follow_users/1
  # GET /follow_users/1.json
  def show
  end

  # GET /follow_users/new
  def new
    @follow_user = FollowUser.new
  end

  # GET /follow_users/1/edit
  def edit
  end

  # POST /follow_users
  # POST /follow_users.json
  def create
    @follow_user = FollowUser.new(follow_user_params)

    respond_to do |format|
      if @follow_user.save
        format.html { redirect_to @follow_user, notice: 'Follow user was successfully created.' }
        format.json { render :show, status: :created, location: @follow_user }
      else
        format.html { render :new }
        format.json { render json: @follow_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /follow_users/1
  # PATCH/PUT /follow_users/1.json
  def update
    respond_to do |format|
      if @follow_user.update(follow_user_params)
        format.html { redirect_to @follow_user, notice: 'Follow user was successfully updated.' }
        format.json { render :show, status: :ok, location: @follow_user }
      else
        format.html { render :edit }
        format.json { render json: @follow_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /follow_users/1
  # DELETE /follow_users/1.json
  def destroy
    @follow_user.destroy
    respond_to do |format|
      format.html { redirect_to follow_users_url, notice: 'Follow user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_follow_user
      @follow_user = FollowUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def follow_user_params
      params.require(:follow_user).permit(:request_user_id, :followed_user_id)
    end
end
