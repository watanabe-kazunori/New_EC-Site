class DstrbtrWhlSlPricesController < ApplicationController
  before_action :set_dstrbtr_whl_sl_price, only: [:show, :edit, :update, :destroy]

  # GET /dstrbtr_whl_sl_prices
  # GET /dstrbtr_whl_sl_prices.json
  def index
    @dstrbtr_whl_sl_prices = DstrbtrWhlSlPrice.all
  end

  # GET /dstrbtr_whl_sl_prices/1
  # GET /dstrbtr_whl_sl_prices/1.json
  def show
  end

  # GET /dstrbtr_whl_sl_prices/new
  def new
    @dstrbtr_whl_sl_price = DstrbtrWhlSlPrice.new
  end

  # GET /dstrbtr_whl_sl_prices/1/edit
  def edit
  end

  # POST /dstrbtr_whl_sl_prices
  # POST /dstrbtr_whl_sl_prices.json
  def create
    @dstrbtr_whl_sl_price = DstrbtrWhlSlPrice.new(dstrbtr_whl_sl_price_params)

    respond_to do |format|
      if @dstrbtr_whl_sl_price.save
        format.html { redirect_to @dstrbtr_whl_sl_price, notice: 'Dstrbtr whl sl price was successfully created.' }
        format.json { render :show, status: :created, location: @dstrbtr_whl_sl_price }
      else
        format.html { render :new }
        format.json { render json: @dstrbtr_whl_sl_price.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dstrbtr_whl_sl_prices/1
  # PATCH/PUT /dstrbtr_whl_sl_prices/1.json
  def update
    respond_to do |format|
      if @dstrbtr_whl_sl_price.update(dstrbtr_whl_sl_price_params)
        format.html { redirect_to @dstrbtr_whl_sl_price, notice: 'Dstrbtr whl sl price was successfully updated.' }
        format.json { render :show, status: :ok, location: @dstrbtr_whl_sl_price }
      else
        format.html { render :edit }
        format.json { render json: @dstrbtr_whl_sl_price.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dstrbtr_whl_sl_prices/1
  # DELETE /dstrbtr_whl_sl_prices/1.json
  def destroy
    @dstrbtr_whl_sl_price.destroy
    respond_to do |format|
      format.html { redirect_to dstrbtr_whl_sl_prices_url, notice: 'Dstrbtr whl sl price was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dstrbtr_whl_sl_price
      @dstrbtr_whl_sl_price = DstrbtrWhlSlPrice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dstrbtr_whl_sl_price_params
      params.require(:dstrbtr_whl_sl_price).permit(:accnt_cd, :sku, :whl_sl_price_ver, :whl_price_rate, :whl_sl_price, :pre_cp_whl_sl_prie_rate, :pre_cp_whl_sl_price, :cp_price_dscnt_rate, :cp_price_dscnt, :start_date, :end_date, :rgstr_dt, :rgstr_usr, :lst_upd_dt, :lst_upd_usr)
    end
end
