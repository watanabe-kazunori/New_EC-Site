class VndrMsController < ApplicationController
  before_action :set_vndr_m, only: [:show, :edit, :update, :destroy]

  # GET /vndr_ms
  # GET /vndr_ms.json
  def index
    @vndr_ms = VndrM.all
  end

  # GET /vndr_ms/1
  # GET /vndr_ms/1.json
  def show
  end

  # GET /vndr_ms/new
  def new
    @vndr_m = VndrM.new
  end

  # GET /vndr_ms/1/edit
  def edit
  end

  # POST /vndr_ms
  # POST /vndr_ms.json
  def create
    @vndr_m = VndrM.new(vndr_m_params)

    respond_to do |format|
      if @vndr_m.save
        format.html { redirect_to @vndr_m, notice: 'Vndr m was successfully created.' }
        format.json { render :show, status: :created, location: @vndr_m }
      else
        format.html { render :new }
        format.json { render json: @vndr_m.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vndr_ms/1
  # PATCH/PUT /vndr_ms/1.json
  def update
    respond_to do |format|
      if @vndr_m.update(vndr_m_params)
        format.html { redirect_to @vndr_m, notice: 'Vndr m was successfully updated.' }
        format.json { render :show, status: :ok, location: @vndr_m }
      else
        format.html { render :edit }
        format.json { render json: @vndr_m.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vndr_ms/1
  # DELETE /vndr_ms/1.json
  def destroy
    @vndr_m.destroy
    respond_to do |format|
      format.html { redirect_to vndr_ms_url, notice: 'Vndr m was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vndr_m
      @vndr_m = VndrM.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vndr_m_params
      params.require(:vndr_m).permit(:ACCNT_CD, :CNTRCT_START_DTE, :CNTRCT_LST_UPD_DATE, :CNTRCT_EXP_DATE, :SALES_REPORT_METHOD, :MONTHLY_REPORT_TYPE, :PAY_METHOD)
    end
end
