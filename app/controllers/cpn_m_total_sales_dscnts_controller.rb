class CpnMTotalSalesDscntsController < ApplicationController
  before_action :set_cpn_m_total_sales_dscnt, only: [:show, :edit, :update, :destroy]

  # GET /cpn_m_total_sales_dscnts
  # GET /cpn_m_total_sales_dscnts.json
  def index
    @cpn_m_total_sales_dscnts = CpnMTotalSalesDscnt.all
  end

  # GET /cpn_m_total_sales_dscnts/1
  # GET /cpn_m_total_sales_dscnts/1.json
  def show
  end

  # GET /cpn_m_total_sales_dscnts/new
  def new
    @cpn_m_total_sales_dscnt = CpnMTotalSalesDscnt.new
  end

  # GET /cpn_m_total_sales_dscnts/1/edit
  def edit
  end

  # POST /cpn_m_total_sales_dscnts
  # POST /cpn_m_total_sales_dscnts.json
  def create
    @cpn_m_total_sales_dscnt = CpnMTotalSalesDscnt.new(cpn_m_total_sales_dscnt_params)

    respond_to do |format|
      if @cpn_m_total_sales_dscnt.save
        format.html { redirect_to @cpn_m_total_sales_dscnt, notice: 'Cpn m total sales dscnt was successfully created.' }
        format.json { render :show, status: :created, location: @cpn_m_total_sales_dscnt }
      else
        format.html { render :new }
        format.json { render json: @cpn_m_total_sales_dscnt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cpn_m_total_sales_dscnts/1
  # PATCH/PUT /cpn_m_total_sales_dscnts/1.json
  def update
    respond_to do |format|
      if @cpn_m_total_sales_dscnt.update(cpn_m_total_sales_dscnt_params)
        format.html { redirect_to @cpn_m_total_sales_dscnt, notice: 'Cpn m total sales dscnt was successfully updated.' }
        format.json { render :show, status: :ok, location: @cpn_m_total_sales_dscnt }
      else
        format.html { render :edit }
        format.json { render json: @cpn_m_total_sales_dscnt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cpn_m_total_sales_dscnts/1
  # DELETE /cpn_m_total_sales_dscnts/1.json
  def destroy
    @cpn_m_total_sales_dscnt.destroy
    respond_to do |format|
      format.html { redirect_to cpn_m_total_sales_dscnts_url, notice: 'Cpn m total sales dscnt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cpn_m_total_sales_dscnt
      @cpn_m_total_sales_dscnt = CpnMTotalSalesDscnt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cpn_m_total_sales_dscnt_params
      params.require(:cpn_m_total_sales_dscnt).permit(:cpn_id, :sales_range_no, :sales_range_min_value, :dscnt_value, :dscnt_rate)
    end
end
