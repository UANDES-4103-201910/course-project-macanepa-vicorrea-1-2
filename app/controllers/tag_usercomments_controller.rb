class TagUsercommentsController < ApplicationController
  before_action :set_tag_usercomment, only: [:show, :edit, :update, :destroy]

  # GET /tag_usercomments
  # GET /tag_usercomments.json
  def index
    @tag_usercomments = TagUsercomment.all
  end

  # GET /tag_usercomments/1
  # GET /tag_usercomments/1.json
  def show
  end

  # GET /tag_usercomments/new
  def new
    @tag_usercomment = TagUsercomment.new
  end

  # GET /tag_usercomments/1/edit
  def edit
  end

  # POST /tag_usercomments
  # POST /tag_usercomments.json
  def create
    @tag_usercomment = TagUsercomment.new(tag_usercomment_params)

    respond_to do |format|
      if @tag_usercomment.save
        format.html { redirect_to @tag_usercomment, notice: 'Tag usercomment was successfully created.' }
        format.json { render :show, status: :created, location: @tag_usercomment }
      else
        format.html { render :new }
        format.json { render json: @tag_usercomment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tag_usercomments/1
  # PATCH/PUT /tag_usercomments/1.json
  def update
    respond_to do |format|
      if @tag_usercomment.update(tag_usercomment_params)
        format.html { redirect_to @tag_usercomment, notice: 'Tag usercomment was successfully updated.' }
        format.json { render :show, status: :ok, location: @tag_usercomment }
      else
        format.html { render :edit }
        format.json { render json: @tag_usercomment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tag_usercomments/1
  # DELETE /tag_usercomments/1.json
  def destroy
    @tag_usercomment.destroy
    respond_to do |format|
      format.html { redirect_to tag_usercomments_url, notice: 'Tag usercomment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tag_usercomment
      @tag_usercomment = TagUsercomment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tag_usercomment_params
      params.require(:tag_usercomment).permit(:user_id, :comment_id)
    end
end
