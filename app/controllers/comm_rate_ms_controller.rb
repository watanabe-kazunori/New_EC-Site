class CommRateMsController < ApplicationController
  before_action :set_comm_rate_m, only: [:show, :edit, :update, :destroy]

  # GET /comm_rate_ms
  # GET /comm_rate_ms.json
  def index
    @comm_rate_ms = CommRateM.all
  end

  # GET /comm_rate_ms/1
  # GET /comm_rate_ms/1.json
  def show
  end

  # GET /comm_rate_ms/new
  def new
    @comm_rate_m = CommRateM.new
  end

  # GET /comm_rate_ms/1/edit
  def edit
  end

  # POST /comm_rate_ms
  # POST /comm_rate_ms.json
  def create
    @comm_rate_m = CommRateM.new(comm_rate_m_params)

    respond_to do |format|
      if @comm_rate_m.save
        format.html { redirect_to @comm_rate_m, notice: 'Comm rate m was successfully created.' }
        format.json { render :show, status: :created, location: @comm_rate_m }
      else
        format.html { render :new }
        format.json { render json: @comm_rate_m.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comm_rate_ms/1
  # PATCH/PUT /comm_rate_ms/1.json
  def update
    respond_to do |format|
      if @comm_rate_m.update(comm_rate_m_params)
        format.html { redirect_to @comm_rate_m, notice: 'Comm rate m was successfully updated.' }
        format.json { render :show, status: :ok, location: @comm_rate_m }
      else
        format.html { render :edit }
        format.json { render json: @comm_rate_m.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comm_rate_ms/1
  # DELETE /comm_rate_ms/1.json
  def destroy
    @comm_rate_m.destroy
    respond_to do |format|
      format.html { redirect_to comm_rate_ms_url, notice: 'Comm rate m was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comm_rate_m
      @comm_rate_m = CommRateM.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comm_rate_m_params
      params.require(:comm_rate_m).permit(:comm_rate_ver, :comm_rate, :start_date, :end_date)
    end
end
