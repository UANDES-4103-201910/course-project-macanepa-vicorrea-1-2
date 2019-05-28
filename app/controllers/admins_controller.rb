class AdminsController < ApplicationController
  before_action :set_admin, only: [:show, :edit, :update, :destroy]
  skip_before_action :verify_authenticity_token
  before_action :check_profile
  # ---------------------

  def view
    admins_count = Admin.pluck(:user_id).length
    if admins_count > 0
      @users = User.where("id NOT IN (?)", Admin.pluck(:user_id)).order(:email)
    else
      @users = User.all.order(:email)
    end
    @posts = (Post.joins(:user).order(:title)).pluck(:email, :title, :content, :city, :country, :gps_location, :created_at, :id)
    @blacklist_users = (Blacklist.joins(:user).order(:email)).pluck(:email, :created_at, :exit_date, :id)
    @dumpster_posts = (Post.joins(:dumpster, :user).order(:title)).pluck(:title, :email, :created_at, :exit_date, :id)
    @admins = (Admin.joins(:user).order(:email)).pluck(:email, :geofence, :super_admin, :created_at, :id, :user_id)
    @suspension_list_users = (User.joins(:suspension_list).order(:email)).pluck(:email, :created_at, :exit_date, :id)
    @block_list_users = (User.joins(:block_list).order(:email)).pluck(:email, :created_at, :exit_date, :id)
  end

  def remove_user_from_list
    if params[:object_type] == "Blacklist"
      this_black = Blacklist.find(params[:object_id])
      this_black.update(exit_date: Time.now)
    end
    if params[:object_type] == "Block List"
      this_block = BlockList.find(params[:object_id])
      this_block.update(exit_date: Time.now)
    end
    if params[:object_type] == "Suspension List"
      this_suspension = SuspensionList.find(params[:object_id])
      this_suspension.update(exit_date: Time.now)
    end
    redirect_to admin_view_path, notice: "The user was successfully removed from the list."
  end

  def make_user_admin
    user_id = (User.where(email: params[:user_mail]).pluck(:id))[0]
    new_admin = Admin.new(user_id: user_id, geofence: "", super_admin: false)
    if new_admin.save
      redirect_to admin_view_path, notice: "The user was successfully made administrator."
    else
      redirect_to admin_view_path, alert: "The user could not become an administrator."
    end
  end

  def remove_post_from_dumpster
    p = Dumpster.where(post_id: params[:post_id], exit_date: nil)
    p.update(exit_date: Time.now)
    redirect_to admin_view_path, notice: "The post was successfully removed from the dumpster."
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
      format.html { redirect_back(fallback_location: root_path); flash[:notice] = 'The user successfully stopped being an administrator.' }
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
