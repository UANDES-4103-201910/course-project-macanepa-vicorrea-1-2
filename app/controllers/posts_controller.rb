class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def see_my_reports
    reports = Report.where(post_id: params[:postId])
    # c = 0
    # @reports.each do |r|
    #   c += 1
    # end
    respond_to do |f|
      # response = { status: 'ok', message: 'Success', user: User.find(@reports.user_id).email, content: @reports.content }
      responses = Array.new
      reports.each do |r|
        response = { status: 'ok', message: 'Success', content: r.content, user: User.find(r.user_id).email, date: r.created_at }
        responses << response
      end
      f.json { render json: responses, status: :created, location: '/'}
    end
  end

  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.all
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
  end

  # GET /posts/new
  def new
    @post = Post.new
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = Post.new(post_params)
    @post.is_open = true
    @post.is_solved = false

    if post_params[:include_location]=="1"
      @post.city="Santiago"
      @post.country="Chile"
      @post.gps_location="Latitude: -33.326802 | Longitude: -70.53883"
    end


    respond_to do |format|
      if @post.save
        format.html { redirect_to root_path, notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: @post }
      else
        # format.html { render :new }
        format.html { redirect_to root_path, alert: 'Error creating post. Recalls that both the length of the title and the content of the post must be at least 5 characters long.' }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    # respond_to do |format|

    if not post_params[:images].nil?
        @post.images.purge
      end

      if not post_params[:attachments].nil?
        @post.attachments.purge
      end

      if @post.update(post_params)
        redirect_to root_path, notice: "Updated!"
        # format.html { redirect_to @post, notice: 'Post was successfully updated.' }
        # format.json { render :show, status: :ok, location: @post }
      # else
      #   format.html { render :edit }
      #   format.json { render json: @post.errors, status: :unprocessable_entity }
      # end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_back(fallback_location: root_path); flash[:notice] = 'The post was successfully deleted.' }
      format.json { head :no_content }
    end
  end




  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:user_id, :title, :content, :city, :country, :gps_location, :is_solved, :is_open, :include_location, images: [], attachments: [])
    end
end
