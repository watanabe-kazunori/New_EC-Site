class SerialMsController < ApplicationController
  before_action :set_serial_m, only: [:show, :edit, :update, :destroy]

  # GET /serial_ms
  # GET /serial_ms.json
  def index
    @serial_ms = SerialM.all
  end

  # GET /serial_ms/1
  # GET /serial_ms/1.json
  def show
  end

  # GET /serial_ms/new
  def new
    @serial_m = SerialM.new
  end

  # GET /serial_ms/1/edit
  def edit
  end

  # POST /serial_ms
  # POST /serial_ms.json
  def create
    @serial_m = SerialM.new(serial_m_params)

    respond_to do |format|
      if @serial_m.save
        format.html { redirect_to @serial_m, notice: 'Serial m was successfully created.' }
        format.json { render :show, status: :created, location: @serial_m }
      else
        format.html { render :new }
        format.json { render json: @serial_m.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /serial_ms/1
  # PATCH/PUT /serial_ms/1.json
  def update
    respond_to do |format|
      if @serial_m.update(serial_m_params)
        format.html { redirect_to @serial_m, notice: 'Serial m was successfully updated.' }
        format.json { render :show, status: :ok, location: @serial_m }
      else
        format.html { render :edit }
        format.json { render json: @serial_m.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /serial_ms/1
  # DELETE /serial_ms/1.json
  def destroy
    @serial_m.destroy
    respond_to do |format|
      format.html { redirect_to serial_ms_url, notice: 'Serial m was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_serial_m
      @serial_m = SerialM.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def serial_m_params
      params.require(:serial_m).permit(:serial_id, :sku, :serial_type, :cnsgnmnt_serial_st, :cnsgnmnt_serial_store_date, :po_no, :os_type, :serial_no_1, :serial_no_2, :serial_no_3, :web_up_serial, :dl_file_name, :dl_pass_cd, :nfr_f, :nfr_rsn, :accnt_cd_cstmr, :so_no, :so_item_no, :sku_serial_assngd, :use_type, :upgrd_serial_f, :upgrd_pre_prd_serial_no, :accnt_cd_sales_cntnt, :dlvry_no, :rgstr_dt, :rgstr_usr, :lst_upd_dt, :lst_upd_usr)
    end
end
