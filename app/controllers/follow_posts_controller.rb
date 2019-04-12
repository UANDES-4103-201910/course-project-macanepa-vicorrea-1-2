class FollowPostsController < ApplicationController
  before_action :set_follow_post, only: [:show, :edit, :update, :destroy]

  # GET /follow_posts
  # GET /follow_posts.json
  def index
    @follow_posts = FollowPost.all
  end

  # GET /follow_posts/1
  # GET /follow_posts/1.json
  def show
  end

  # GET /follow_posts/new
  def new
    @follow_post = FollowPost.new
  end

  # GET /follow_posts/1/edit
  def edit
  end

  # POST /follow_posts
  # POST /follow_posts.json
  def create
    @follow_post = FollowPost.new(follow_post_params)

    respond_to do |format|
      if @follow_post.save
        format.html { redirect_to @follow_post, notice: 'Follow post was successfully created.' }
        format.json { render :show, status: :created, location: @follow_post }
      else
        format.html { render :new }
        format.json { render json: @follow_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /follow_posts/1
  # PATCH/PUT /follow_posts/1.json
  def update
    respond_to do |format|
      if @follow_post.update(follow_post_params)
        format.html { redirect_to @follow_post, notice: 'Follow post was successfully updated.' }
        format.json { render :show, status: :ok, location: @follow_post }
      else
        format.html { render :edit }
        format.json { render json: @follow_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /follow_posts/1
  # DELETE /follow_posts/1.json
  def destroy
    @follow_post.destroy
    respond_to do |format|
      format.html { redirect_to follow_posts_url, notice: 'Follow post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_follow_post
      @follow_post = FollowPost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def follow_post_params
      params.require(:follow_post).permit(:user_id, :post_id)
    end
end
