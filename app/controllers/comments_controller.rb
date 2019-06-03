class CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :edit, :update, :destroy]

  # GET /comments
  # GET /comments.json
  def index
    @comments = Comment.where(post_id: params[:post_id])
    respond_to do |format|
      format.json {render json: @comments.to_json}
    end
  end

  # GET /comments/1
  # GET /comments/1.json
  def show
    @comment = Comment.where(id:params[:id], post_id: params[:post_id])
    respond_to do |format|
      format.json {render json: @comment.to_json}
    end
  end

  # GET /comments/new
  def new
    @comment = Comment.new
  end

  # GET /comments/1/edit
  def edit
  end

  # POST /comments
  # POST /comments.json
  def create
    @comment = Comment.new(comment_params)
    respond_to do |format|
      if @comment.save
        check_tags
        format.html { redirect_to root_path, notice: 'Comment was successfully created.' }
        format.json { render :show, status: :created, location: @comment }
      else
        # format.html { render :new }
        format.html { redirect_to root_path, alert: 'Error creating comment. Remember that the length of the comment must be at least two characters.' }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comments/1
  # PATCH/PUT /comments/1.json
  def update
    respond_to do |format|

      if @comment.update(comment_params)
        check_tags
        format.html { redirect_to root_path, notice: 'Comment was successfully updated.' }
        format.json { render :show, status: :ok, location: @comment }
      else
        format.html { render :edit }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comments/1
  # DELETE /comments/1.json
  def destroy
    @comment.destroy
    respond_to do |format|
      format.html { redirect_to comments_url, notice: 'Comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params
      params.require(:comment).permit(:user_id, :post_id, :comment_id, :content)
    end

    def check_tags
      if @comment.content.include? "@"
        sub_strings = @comment.content.split(" ")
        emails = []
          sub_strings.each do |sub_string|
            if sub_string.include? "@"
              emails << sub_string
              u = User.where(email: sub_string)
              if(u.length != 0)
                u = u.first
                Tag.create!(user_id: u.id, comment_id: @comment.id, post_id: @comment.post.id)
              end
            end
        end
      end
      puts("\n\n\n\n\n\n #{emails} \n\n\n\n\n\n")

    end

end
