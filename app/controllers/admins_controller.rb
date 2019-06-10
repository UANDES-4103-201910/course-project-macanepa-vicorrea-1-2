class AdminsController < ApplicationController
  before_action :set_admin, only: [:show, :edit, :destroy]
  skip_before_action :verify_authenticity_token
  before_action :check_profile

  def view
    @users = User.all
    @posts = Post.all
    @blacklist_users = Blacklist.all.order(:user_id)
    @dumpster_posts = Dumpster.all.order(:post_id)
    @suspension_list_users = SuspensionList.all.order(:user_id)
    @block_list_users = BlockList.all.order(:user_id)
  end

  # def make_get_geofences_request
  #   require 'net/http'
  #   require 'json'
  #   begin
  #     uri = URI('https://api.fencer.io/v1.0/geofence')
  #     http = Net::HTTP.new(uri.host, uri.port)
  #     http.use_ssl = true
  #     headers = {'Authorization' => '5195ba22-ab3c-52f6-bab9-d15ff7b8794e'}
  #     req = Net::HTTP::Get.new(uri.path, headers)
  #     res = http.request(req)
  #     resp = res.body
  #     resp_in_js = JSON.parse(resp)
  #     puts "response #{resp}"
  #     puts resp_in_js
  #   rescue => e
  #     puts "failed #{e}"
  #   end
  # end

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
        format.html { redirect_back(fallback_location: root_path); flash[:notice] = 'The user successfully became an administrator.' }
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
    if params[:id].nil?
      @admin = Admin.find(params[:admin][:id])
    else
      set_admin
    end
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
