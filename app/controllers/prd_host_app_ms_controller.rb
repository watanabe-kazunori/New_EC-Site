class PrdHostAppMsController < ApplicationController
  before_action :set_prd_host_app_m, only: [:show, :edit, :update, :destroy]

  # GET /prd_host_app_ms
  # GET /prd_host_app_ms.json
  def index
    @prd_host_app_ms = PrdHostAppM.all
  end

  # GET /prd_host_app_ms/1
  # GET /prd_host_app_ms/1.json
  def show
  end

  # GET /prd_host_app_ms/new
  def new
    @prd_host_app_m = PrdHostAppM.new
  end

  # GET /prd_host_app_ms/1/edit
  def edit
  end

  # POST /prd_host_app_ms
  # POST /prd_host_app_ms.json
  def create
    @prd_host_app_m = PrdHostAppM.new(prd_host_app_m_params)

    respond_to do |format|
      if @prd_host_app_m.save
        format.html { redirect_to @prd_host_app_m, notice: 'Prd host app m was successfully created.' }
        format.json { render :show, status: :created, location: @prd_host_app_m }
      else
        format.html { render :new }
        format.json { render json: @prd_host_app_m.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prd_host_app_ms/1
  # PATCH/PUT /prd_host_app_ms/1.json
  def update
    respond_to do |format|
      if @prd_host_app_m.update(prd_host_app_m_params)
        format.html { redirect_to @prd_host_app_m, notice: 'Prd host app m was successfully updated.' }
        format.json { render :show, status: :ok, location: @prd_host_app_m }
      else
        format.html { render :edit }
        format.json { render json: @prd_host_app_m.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prd_host_app_ms/1
  # DELETE /prd_host_app_ms/1.json
  def destroy
    @prd_host_app_m.destroy
    respond_to do |format|
      format.html { redirect_to prd_host_app_ms_url, notice: 'Prd host app m was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prd_host_app_m
      @prd_host_app_m = PrdHostAppM.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prd_host_app_m_params
      params.require(:prd_host_app_m).permit(:APP_CD, :APP_NAME, :APP_VER)
    end
end
