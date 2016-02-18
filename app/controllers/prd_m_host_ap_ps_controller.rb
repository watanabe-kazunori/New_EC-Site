class PrdMHostApPsController < ApplicationController
  before_action :set_prd_m_host_app, only: [:show, :edit, :update, :destroy]

  # GET /prd_m_host_apps
  # GET /prd_m_host_apps.json
  def index
    @prd_m_host_apps = PrdMHostApp.all
  end

  # GET /prd_m_host_apps/1
  # GET /prd_m_host_apps/1.json
  def show
  end

  # GET /prd_m_host_apps/new
  def new
    @prd_m_host_app = PrdMHostApp.new
  end

  # GET /prd_m_host_apps/1/edit
  def edit
  end

  # POST /prd_m_host_apps
  # POST /prd_m_host_apps.json
  def create
    @prd_m_host_app = PrdMHostApp.new(prd_m_host_app_params)

    respond_to do |format|
      if @prd_m_host_app.save
        format.html { redirect_to @prd_m_host_app, notice: 'Prd m host app was successfully created.' }
        format.json { render :show, status: :created, location: @prd_m_host_app }
      else
        format.html { render :new }
        format.json { render json: @prd_m_host_app.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prd_m_host_apps/1
  # PATCH/PUT /prd_m_host_apps/1.json
  def update
    respond_to do |format|
      if @prd_m_host_app.update(prd_m_host_app_params)
        format.html { redirect_to @prd_m_host_app, notice: 'Prd m host app was successfully updated.' }
        format.json { render :show, status: :ok, location: @prd_m_host_app }
      else
        format.html { render :edit }
        format.json { render json: @prd_m_host_app.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prd_m_host_apps/1
  # DELETE /prd_m_host_apps/1.json
  def destroy
    @prd_m_host_app.destroy
    respond_to do |format|
      format.html { redirect_to prd_m_host_apps_url, notice: 'Prd m host app was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prd_m_host_app
      @prd_m_host_app = PrdMHostApp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prd_m_host_app_params
      params.require(:prd_m_host_app).permit(:SKU, :APP_CD)
    end
end
