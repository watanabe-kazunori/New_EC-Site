class CpnMSalesCntctsController < ApplicationController
  before_action :set_cpn_m_sales_cntct, only: [:show, :edit, :update, :destroy]

  # GET /cpn_m_sales_cntcts
  # GET /cpn_m_sales_cntcts.json
  def index
    @cpn_m_sales_cntcts = CpnMSalesCntct.all
  end

  # GET /cpn_m_sales_cntcts/1
  # GET /cpn_m_sales_cntcts/1.json
  def show
  end

  # GET /cpn_m_sales_cntcts/new
  def new
    @cpn_m_sales_cntct = CpnMSalesCntct.new
  end

  # GET /cpn_m_sales_cntcts/1/edit
  def edit
  end

  # POST /cpn_m_sales_cntcts
  # POST /cpn_m_sales_cntcts.json
  def create
    @cpn_m_sales_cntct = CpnMSalesCntct.new(cpn_m_sales_cntct_params)

    respond_to do |format|
      if @cpn_m_sales_cntct.save
        format.html { redirect_to @cpn_m_sales_cntct, notice: 'Cpn m sales cntct was successfully created.' }
        format.json { render :show, status: :created, location: @cpn_m_sales_cntct }
      else
        format.html { render :new }
        format.json { render json: @cpn_m_sales_cntct.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cpn_m_sales_cntcts/1
  # PATCH/PUT /cpn_m_sales_cntcts/1.json
  def update
    respond_to do |format|
      if @cpn_m_sales_cntct.update(cpn_m_sales_cntct_params)
        format.html { redirect_to @cpn_m_sales_cntct, notice: 'Cpn m sales cntct was successfully updated.' }
        format.json { render :show, status: :ok, location: @cpn_m_sales_cntct }
      else
        format.html { render :edit }
        format.json { render json: @cpn_m_sales_cntct.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cpn_m_sales_cntcts/1
  # DELETE /cpn_m_sales_cntcts/1.json
  def destroy
    @cpn_m_sales_cntct.destroy
    respond_to do |format|
      format.html { redirect_to cpn_m_sales_cntcts_url, notice: 'Cpn m sales cntct was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cpn_m_sales_cntct
      @cpn_m_sales_cntct = CpnMSalesCntct.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cpn_m_sales_cntct_params
      params.require(:cpn_m_sales_cntct).permit(:cpn_id, :accnt_cd_sales_cntct)
    end
end
