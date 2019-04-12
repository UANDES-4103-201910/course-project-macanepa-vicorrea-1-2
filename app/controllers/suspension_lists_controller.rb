class SuspensionListsController < ApplicationController
  before_action :set_suspension_list, only: [:show, :edit, :update, :destroy]

  # GET /suspension_lists
  # GET /suspension_lists.json
  def index
    @suspension_lists = SuspensionList.all
  end

  # GET /suspension_lists/1
  # GET /suspension_lists/1.json
  def show
  end

  # GET /suspension_lists/new
  def new
    @suspension_list = SuspensionList.new
  end

  # GET /suspension_lists/1/edit
  def edit
  end

  # POST /suspension_lists
  # POST /suspension_lists.json
  def create
    @suspension_list = SuspensionList.new(suspension_list_params)

    respond_to do |format|
      if @suspension_list.save
        format.html { redirect_to @suspension_list, notice: 'Suspension list was successfully created.' }
        format.json { render :show, status: :created, location: @suspension_list }
      else
        format.html { render :new }
        format.json { render json: @suspension_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /suspension_lists/1
  # PATCH/PUT /suspension_lists/1.json
  def update
    respond_to do |format|
      if @suspension_list.update(suspension_list_params)
        format.html { redirect_to @suspension_list, notice: 'Suspension list was successfully updated.' }
        format.json { render :show, status: :ok, location: @suspension_list }
      else
        format.html { render :edit }
        format.json { render json: @suspension_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /suspension_lists/1
  # DELETE /suspension_lists/1.json
  def destroy
    @suspension_list.destroy
    respond_to do |format|
      format.html { redirect_to suspension_lists_url, notice: 'Suspension list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_suspension_list
      @suspension_list = SuspensionList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def suspension_list_params
      params.require(:suspension_list).permit(:user_id)
    end
end
