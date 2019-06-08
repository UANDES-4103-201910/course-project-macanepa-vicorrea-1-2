class ReportsController < ApplicationController
  before_action :set_report, only: [:show, :edit, :update, :destroy]

  # GET /reports
  # GET /reports.json
  def index
    @reports = Report.all
  end

  # GET /reports/1
  # GET /reports/1.json
  def show
  end

  # GET /reports/new
  def new
    @report = Report.new
  end

  # GET /reports/1/edit
  def edit
  end

  # POST /reports
  # POST /reports.json
  def create
    @report = Report.new(report_params)
    respond_to do |format|
      if @report.save
        reported_post_owner = Post.find(@report.post_id).user
        condition = reported_post_owner.have_condition_to_blacklist
        already_on_blacklist = Blacklist.where(user_id: reported_post_owner.id, exit_date: nil).count > 0

        # See if the user account will be blocked:
        #   If after account suspension the user publishes another post
        #   that is flagged inappropriate by three people or more, the user account will be blocked permanently.
        if Post.find(@report.post_id).get_reporting_users_num >= 3 && reported_post_owner.was_on_blacklist
          BlockList.create!(user_id: reported_post_owner.id, exit_date: nil)
          # See if the reported post owner has to go to the blacklist:
          #   A user that has two or more posts flagged as inaproppriate by three or
          #   more different users (and/or administrators) within a week will fall
          #   into a blacklist visible by all site administrators.
        elsif condition && !already_on_blacklist
          Blacklist.create!(user_id: reported_post_owner.id, exit_date: nil)
          my_reported_posts_id = reported_post_owner.get_ids_reported_posts_user_blacklisted
          my_reported_posts_id.each do |id|
            Dumpster.create!(post_id: id, exit_date: nil)
          end
        end

        format.html { redirect_back(fallback_location: root_path); flash[:notice] = 'The post was successfully marked as inappropriate.' }
        format.json { render :show, status: :created, location: @report }
      else
        format.html { render :new }
        format.json { render json: @report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reports/1
  # PATCH/PUT /reports/1.json
  def update
    respond_to do |format|
      if @report.update(report_params)
        format.html { redirect_to @report, notice: 'Report was successfully updated.' }
        format.json { render :show, status: :ok, location: @report }
      else
        format.html { render :edit }
        format.json { render json: @report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reports/1
  # DELETE /reports/1.json
  def destroy
    @report.destroy
    respond_to do |format|
      format.html { redirect_to reports_url, notice: 'Report was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_report
      @report = Report.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def report_params
      params.require(:report).permit(:user_id, :post_id, :content)
    end
end
