class CpnMSalesDstsController < ApplicationController
  before_action :set_cpn_m_sales_dst, only: [:show, :edit, :update, :destroy]

  # GET /cpn_m_sales_dsts
  # GET /cpn_m_sales_dsts.json
  def index
    @cpn_m_sales_dsts = CpnMSalesDst.all
  end

  # GET /cpn_m_sales_dsts/1
  # GET /cpn_m_sales_dsts/1.json
  def show
  end

  # GET /cpn_m_sales_dsts/new
  def new
    @cpn_m_sales_dst = CpnMSalesDst.new
  end

  # GET /cpn_m_sales_dsts/1/edit
  def edit
  end

  # POST /cpn_m_sales_dsts
  # POST /cpn_m_sales_dsts.json
  def create
    @cpn_m_sales_dst = CpnMSalesDst.new(cpn_m_sales_dst_params)

    respond_to do |format|
      if @cpn_m_sales_dst.save
        format.html { redirect_to @cpn_m_sales_dst, notice: 'Cpn m sales dst was successfully created.' }
        format.json { render :show, status: :created, location: @cpn_m_sales_dst }
      else
        format.html { render :new }
        format.json { render json: @cpn_m_sales_dst.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cpn_m_sales_dsts/1
  # PATCH/PUT /cpn_m_sales_dsts/1.json
  def update
    respond_to do |format|
      if @cpn_m_sales_dst.update(cpn_m_sales_dst_params)
        format.html { redirect_to @cpn_m_sales_dst, notice: 'Cpn m sales dst was successfully updated.' }
        format.json { render :show, status: :ok, location: @cpn_m_sales_dst }
      else
        format.html { render :edit }
        format.json { render json: @cpn_m_sales_dst.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cpn_m_sales_dsts/1
  # DELETE /cpn_m_sales_dsts/1.json
  def destroy
    @cpn_m_sales_dst.destroy
    respond_to do |format|
      format.html { redirect_to cpn_m_sales_dsts_url, notice: 'Cpn m sales dst was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cpn_m_sales_dst
      @cpn_m_sales_dst = CpnMSalesDst.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cpn_m_sales_dst_params
      params.require(:cpn_m_sales_dst).permit(:cpn_id, :accnt_cd)
    end
end
