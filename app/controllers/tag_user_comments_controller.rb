class TagUserCommentsController < ApplicationController
  before_action :set_tag_user_comment, only: [:show, :edit, :update, :destroy]

  # GET /tag_user_comments
  # GET /tag_user_comments.json
  def index
    @tag_user_comments = TagUserComment.all
  end

  # GET /tag_user_comments/1
  # GET /tag_user_comments/1.json
  def show
  end

  # GET /tag_user_comments/new
  def new
    @tag_user_comment = TagUserComment.new
  end

  # GET /tag_user_comments/1/edit
  def edit
  end

  # POST /tag_user_comments
  # POST /tag_user_comments.json
  def create
    @tag_user_comment = TagUserComment.new(tag_user_comment_params)

    respond_to do |format|
      if @tag_user_comment.save
        format.html { redirect_to @tag_user_comment, notice: 'Tag user comment was successfully created.' }
        format.json { render :show, status: :created, location: @tag_user_comment }
      else
        format.html { render :new }
        format.json { render json: @tag_user_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tag_user_comments/1
  # PATCH/PUT /tag_user_comments/1.json
  def update
    respond_to do |format|
      if @tag_user_comment.update(tag_user_comment_params)
        format.html { redirect_to @tag_user_comment, notice: 'Tag user comment was successfully updated.' }
        format.json { render :show, status: :ok, location: @tag_user_comment }
      else
        format.html { render :edit }
        format.json { render json: @tag_user_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tag_user_comments/1
  # DELETE /tag_user_comments/1.json
  def destroy
    @tag_user_comment.destroy
    respond_to do |format|
      format.html { redirect_to tag_user_comments_url, notice: 'Tag user comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tag_user_comment
      @tag_user_comment = TagUserComment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tag_user_comment_params
      params.require(:tag_user_comment).permit(:user_id, :comment)
    end
end
