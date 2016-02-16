class FbjPrdSellPriceMsController < ApplicationController
  before_action :set_fbj_prd_sell_price_m, only: [:show, :edit, :update, :destroy]

  # GET /fbj_prd_sell_price_ms
  # GET /fbj_prd_sell_price_ms.json
  def index
    @fbj_prd_sell_price_ms = FbjPrdSellPriceM.all
  end

  # GET /fbj_prd_sell_price_ms/1
  # GET /fbj_prd_sell_price_ms/1.json
  def show
  end

  # GET /fbj_prd_sell_price_ms/new
  def new
    @fbj_prd_sell_price_m = FbjPrdSellPriceM.new
  end

  # GET /fbj_prd_sell_price_ms/1/edit
  def edit
  end

  # POST /fbj_prd_sell_price_ms
  # POST /fbj_prd_sell_price_ms.json
  def create
    @fbj_prd_sell_price_m = FbjPrdSellPriceM.new(fbj_prd_sell_price_m_params)

    respond_to do |format|
      if @fbj_prd_sell_price_m.save
        format.html { redirect_to @fbj_prd_sell_price_m, notice: 'Fbj prd sell price m was successfully created.' }
        format.json { render :show, status: :created, location: @fbj_prd_sell_price_m }
      else
        format.html { render :new }
        format.json { render json: @fbj_prd_sell_price_m.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fbj_prd_sell_price_ms/1
  # PATCH/PUT /fbj_prd_sell_price_ms/1.json
  def update
    respond_to do |format|
      if @fbj_prd_sell_price_m.update(fbj_prd_sell_price_m_params)
        format.html { redirect_to @fbj_prd_sell_price_m, notice: 'Fbj prd sell price m was successfully updated.' }
        format.json { render :show, status: :ok, location: @fbj_prd_sell_price_m }
      else
        format.html { render :edit }
        format.json { render json: @fbj_prd_sell_price_m.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fbj_prd_sell_price_ms/1
  # DELETE /fbj_prd_sell_price_ms/1.json
  def destroy
    @fbj_prd_sell_price_m.destroy
    respond_to do |format|
      format.html { redirect_to fbj_prd_sell_price_ms_url, notice: 'Fbj prd sell price m was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fbj_prd_sell_price_m
      @fbj_prd_sell_price_m = FbjPrdSellPriceM.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fbj_prd_sell_price_m_params
      params.require(:fbj_prd_sell_price_m).permit(:sku, :sell_price_ver, :tax_ex_price, :tax_in_price, :pre_cp_sell_price, :cp_dscnt_rate, :applctn_start_dt, :applctn_end_dt, :currency_cd, :exchng_rate_ver, :comm_rate_ver, :tax_ver, :rgstr_dtrgstr_dt, :rgstr_usr, :lst_updt_dt, :lst_updt_usr)
    end
end
