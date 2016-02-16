class PrdMPrchsPricesController < ApplicationController
  before_action :set_prd_m_prchs_price, only: [:show, :edit, :update, :destroy]

  # GET /prd_m_prchs_prices
  # GET /prd_m_prchs_prices.json
  def index
    @prd_m_prchs_prices = PrdMPrchsPrice.all
  end

  # GET /prd_m_prchs_prices/1
  # GET /prd_m_prchs_prices/1.json
  def show
  end

  # GET /prd_m_prchs_prices/new
  def new
    @prd_m_prchs_price = PrdMPrchsPrice.new
  end

  # GET /prd_m_prchs_prices/1/edit
  def edit
  end

  # POST /prd_m_prchs_prices
  # POST /prd_m_prchs_prices.json
  def create
    @prd_m_prchs_price = PrdMPrchsPrice.new(prd_m_prchs_price_params)

    respond_to do |format|
      if @prd_m_prchs_price.save
        format.html { redirect_to @prd_m_prchs_price, notice: 'Prd m prchs price was successfully created.' }
        format.json { render :show, status: :created, location: @prd_m_prchs_price }
      else
        format.html { render :new }
        format.json { render json: @prd_m_prchs_price.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prd_m_prchs_prices/1
  # PATCH/PUT /prd_m_prchs_prices/1.json
  def update
    respond_to do |format|
      if @prd_m_prchs_price.update(prd_m_prchs_price_params)
        format.html { redirect_to @prd_m_prchs_price, notice: 'Prd m prchs price was successfully updated.' }
        format.json { render :show, status: :ok, location: @prd_m_prchs_price }
      else
        format.html { render :edit }
        format.json { render json: @prd_m_prchs_price.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prd_m_prchs_prices/1
  # DELETE /prd_m_prchs_prices/1.json
  def destroy
    @prd_m_prchs_price.destroy
    respond_to do |format|
      format.html { redirect_to prd_m_prchs_prices_url, notice: 'Prd m prchs price was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prd_m_prchs_price
      @prd_m_prchs_price = PrdMPrchsPrice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prd_m_prchs_price_params
      params.require(:prd_m_prchs_price).permit(:sku, :prchs_price_ver, :list_price, :prchs_price_rate, :prchs_price, :start_date, :end_date, :currency_cd, :rgstr_dt, :rgstr_usr, :lst_upd_dt, :lst_upda_usr)
    end
end
