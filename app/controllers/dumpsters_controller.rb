class DumpstersController < ApplicationController
  before_action :set_dumpster, only: [:show, :edit, :update, :destroy]

  # GET /dumpsters
  # GET /dumpsters.json
  def index
    @dumpsters = Dumpster.all
  end

  # GET /dumpsters/1
  # GET /dumpsters/1.json
  def show
  end

  # GET /dumpsters/new
  def new
    @dumpster = Dumpster.new
  end

  # GET /dumpsters/1/edit
  def edit
  end

  # POST /dumpsters
  # POST /dumpsters.json
  def create
    @dumpster = Dumpster.new(dumpster_params)

    respond_to do |format|
      if @dumpster.save
        format.html { redirect_to @dumpster, notice: 'Dumpster was successfully created.' }
        format.json { render :show, status: :created, location: @dumpster }
      else
        format.html { render :new }
        format.json { render json: @dumpster.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dumpsters/1
  # PATCH/PUT /dumpsters/1.json
  def update
    respond_to do |format|
      if @dumpster.update(dumpster_params)
        format.html { redirect_to @dumpster, notice: 'Dumpster was successfully updated.' }
        format.json { render :show, status: :ok, location: @dumpster }
      else
        format.html { render :edit }
        format.json { render json: @dumpster.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dumpsters/1
  # DELETE /dumpsters/1.json
  def destroy
    @dumpster.destroy
    respond_to do |format|
      format.html { redirect_to dumpsters_url, notice: 'Dumpster was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dumpster
      @dumpster = Dumpster.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dumpster_params
      params.require(:dumpster).permit(:post_id)
    end
end
