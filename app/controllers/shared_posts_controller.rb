class SharedPostsController < ApplicationController
  before_action :set_shared_post, :check, only: [:show, :edit, :update, :destroy]
  # before_action
  # GET /shared_posts
  # GET /shared_posts.json
  def index
    @shared_posts = SharedPost.all
  end

  # GET /shared_posts/1
  # GET /shared_posts/1.json
  def show
  end

  # GET /shared_posts/new
  def new
    @shared_post = SharedPost.new
  end

  # GET /shared_posts/1/edit
  def edit
  end

  # POST /shared_posts
  # POST /shared_posts.json
  def create
    @shared_post = SharedPost.new(shared_post_params)
    respond_to do |format|
      if @shared_post.save
        format.html { redirect_to root_path, notice: 'Shared post was successfully created.' }
        format.json { render :show, status: :created, location: @shared_post }
      else
        # format.html { render :new }
        format.html { redirect_to root_path}
        format.json { render json: @shared_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shared_posts/1
  # PATCH/PUT /shared_posts/1.json
  def update
    respond_to do |format|
      if @shared_post.update(shared_post_params)
        format.html { redirect_to root_path, notice: 'Shared post was successfully updated.' }
        format.json { render :show, status: :ok, location: @shared_post }
      else
        # format.html { render :edit }
        format.html { redirect_to root_path}
        format.json { render json: @shared_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shared_posts/1
  # DELETE /shared_posts/1.json
  def destroy
    @shared_post.destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Shared post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shared_post
      @shared_post = SharedPost.find(params[:id])
    end



    # Never trust parameters from the scary internet, only allow the white list through.
    def shared_post_params
      params.require(:shared_post).permit(:user_id, :post_id, :content)
    end


end
