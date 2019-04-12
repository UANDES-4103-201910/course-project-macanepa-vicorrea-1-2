class TagUserPostsController < ApplicationController
  before_action :set_tag_user_post, only: [:show, :edit, :update, :destroy]

  # GET /tag_user_posts
  # GET /tag_user_posts.json
  def index
    @tag_user_posts = TagUserPost.all
  end

  # GET /tag_user_posts/1
  # GET /tag_user_posts/1.json
  def show
  end

  # GET /tag_user_posts/new
  def new
    @tag_user_post = TagUserPost.new
  end

  # GET /tag_user_posts/1/edit
  def edit
  end

  # POST /tag_user_posts
  # POST /tag_user_posts.json
  def create
    @tag_user_post = TagUserPost.new(tag_user_post_params)

    respond_to do |format|
      if @tag_user_post.save
        format.html { redirect_to @tag_user_post, notice: 'Tag user post was successfully created.' }
        format.json { render :show, status: :created, location: @tag_user_post }
      else
        format.html { render :new }
        format.json { render json: @tag_user_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tag_user_posts/1
  # PATCH/PUT /tag_user_posts/1.json
  def update
    respond_to do |format|
      if @tag_user_post.update(tag_user_post_params)
        format.html { redirect_to @tag_user_post, notice: 'Tag user post was successfully updated.' }
        format.json { render :show, status: :ok, location: @tag_user_post }
      else
        format.html { render :edit }
        format.json { render json: @tag_user_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tag_user_posts/1
  # DELETE /tag_user_posts/1.json
  def destroy
    @tag_user_post.destroy
    respond_to do |format|
      format.html { redirect_to tag_user_posts_url, notice: 'Tag user post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tag_user_post
      @tag_user_post = TagUserPost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tag_user_post_params
      params.require(:tag_user_post).permit(:user_id, :post_id)
    end
end
