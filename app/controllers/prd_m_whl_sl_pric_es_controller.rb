class PrdMWhlSlPricEsController < ApplicationController
  before_action :set_prd_m_whl_sl_price, only: [:show, :edit, :update, :destroy]

  # GET /prd_m_whl_sl_prices
  # GET /prd_m_whl_sl_prices.json
  def index
    @prd_m_whl_sl_prices = PrdMWhlSlPrice.all
  end

  # GET /prd_m_whl_sl_prices/1
  # GET /prd_m_whl_sl_prices/1.json
  def show
  end

  # GET /prd_m_whl_sl_prices/new
  def new
    @prd_m_whl_sl_price = PrdMWhlSlPrice.new
  end

  # GET /prd_m_whl_sl_prices/1/edit
  def edit
  end

  # POST /prd_m_whl_sl_prices
  # POST /prd_m_whl_sl_prices.json
  def create
    @prd_m_whl_sl_price = PrdMWhlSlPrice.new(prd_m_whl_sl_price_params)

    respond_to do |format|
      if @prd_m_whl_sl_price.save
        format.html { redirect_to @prd_m_whl_sl_price, notice: 'Prd m whl sl price was successfully created.' }
        format.json { render :show, status: :created, location: @prd_m_whl_sl_price }
      else
        format.html { render :new }
        format.json { render json: @prd_m_whl_sl_price.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prd_m_whl_sl_prices/1
  # PATCH/PUT /prd_m_whl_sl_prices/1.json
  def update
    respond_to do |format|
      if @prd_m_whl_sl_price.update(prd_m_whl_sl_price_params)
        format.html { redirect_to @prd_m_whl_sl_price, notice: 'Prd m whl sl price was successfully updated.' }
        format.json { render :show, status: :ok, location: @prd_m_whl_sl_price }
      else
        format.html { render :edit }
        format.json { render json: @prd_m_whl_sl_price.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prd_m_whl_sl_prices/1
  # DELETE /prd_m_whl_sl_prices/1.json
  def destroy
    @prd_m_whl_sl_price.destroy
    respond_to do |format|
      format.html { redirect_to prd_m_whl_sl_prices_url, notice: 'Prd m whl sl price was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prd_m_whl_sl_price
      @prd_m_whl_sl_price = PrdMWhlSlPrice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prd_m_whl_sl_price_params
      params.require(:prd_m_whl_sl_price).permit(:SKU, :WHL_SL_PRICE_TYPE, :WHL_SL_PRICE_VER, :WHL_SL_PRICE_RATE, :WHL_SL_PRICE, :PRE_CP_WHL_SL_PRIE_RATE, :PRE_CP_WHL_SL_PRICE, :CP_PRICE_DSCNT_RATE, :CP_PRICE_DSCNT, :START_DATE, :END_DATE, :RGSTR_DT, :RGSTR_USR, :LST_UPD_DT, :LST_UPD_USR)
    end
end
