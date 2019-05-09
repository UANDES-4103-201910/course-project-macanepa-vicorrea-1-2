class AdminsController < ApplicationController
  before_action :set_admin, only: [:show, :edit, :update, :destroy]

  # ---------------------

  def view
    @users = User.all
    @posts = (User.joins(:posts)).pluck(:email, :title, :content, :city, :country, :gps_location, :created_at)
    @blacklist_users = (User.joins(:blacklist)).pluck(:email, :created_at, :exit_date)
    @dumpster_posts = (Post.joins(:dumpster, :user)).pluck(:title, :email, :created_at, :exit_date)
    @admins = (Admin.joins(:user)).pluck(:email, :geofence, :super_admin, :created_at)
    @suspension_list_users = (User.joins(:suspension_list)).pluck(:email, :created_at, :exit_date)
    @block_list_users = (User.joins(:block_list)).pluck(:email, :created_at, :exit_date)
  end

  # ---------------------

  # GET /admins
  # GET /admins.json
  def index
    @admins = Admin.all
  end

  # GET /admins/1
  # GET /admins/1.json
  def show
  end

  # GET /admins/new
  def new
    @admin = Admin.new
  end

  # GET /admins/1/edit
  def edit
  end

  # POST /admins
  # POST /admins.json
  def create
    @admin = Admin.new(admin_params)

    respond_to do |format|
      if @admin.save
        format.html { redirect_to @admin, notice: 'Admin was successfully created.' }
        format.json { render :show, status: :created, location: @admin }
      else
        format.html { render :new }
        format.json { render json: @admin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admins/1
  # PATCH/PUT /admins/1.json
  def update
    respond_to do |format|
      if @admin.update(admin_params)
        format.html { redirect_to @admin, notice: 'Admin was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin }
      else
        format.html { render :edit }
        format.json { render json: @admin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admins/1
  # DELETE /admins/1.json
  def destroy
    @admin.destroy
    respond_to do |format|
      format.html { redirect_to admins_url, notice: 'Admin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin
      @admin = Admin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_params
      params.require(:admin).permit(:user_id, :geofence, :super_admin)
    end
end
