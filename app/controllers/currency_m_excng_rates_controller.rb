class CurrencyMExcngRatesController < ApplicationController
  before_action :set_currency_m_excng_rate, only: [:show, :edit, :update, :destroy]

  # GET /currency_m_excng_rates
  # GET /currency_m_excng_rates.json
  def index
    @currency_m_excng_rates = CurrencyMExcngRate.all
  end

  # GET /currency_m_excng_rates/1
  # GET /currency_m_excng_rates/1.json
  def show
  end

  # GET /currency_m_excng_rates/new
  def new
    @currency_m_excng_rate = CurrencyMExcngRate.new
  end

  # GET /currency_m_excng_rates/1/edit
  def edit
  end

  # POST /currency_m_excng_rates
  # POST /currency_m_excng_rates.json
  def create
    @currency_m_excng_rate = CurrencyMExcngRate.new(currency_m_excng_rate_params)

    respond_to do |format|
      if @currency_m_excng_rate.save
        format.html { redirect_to @currency_m_excng_rate, notice: 'Currency m excng rate was successfully created.' }
        format.json { render :show, status: :created, location: @currency_m_excng_rate }
      else
        format.html { render :new }
        format.json { render json: @currency_m_excng_rate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /currency_m_excng_rates/1
  # PATCH/PUT /currency_m_excng_rates/1.json
  def update
    respond_to do |format|
      if @currency_m_excng_rate.update(currency_m_excng_rate_params)
        format.html { redirect_to @currency_m_excng_rate, notice: 'Currency m excng rate was successfully updated.' }
        format.json { render :show, status: :ok, location: @currency_m_excng_rate }
      else
        format.html { render :edit }
        format.json { render json: @currency_m_excng_rate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /currency_m_excng_rates/1
  # DELETE /currency_m_excng_rates/1.json
  def destroy
    @currency_m_excng_rate.destroy
    respond_to do |format|
      format.html { redirect_to currency_m_excng_rates_url, notice: 'Currency m excng rate was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_currency_m_excng_rate
      @currency_m_excng_rate = CurrencyMExcngRate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def currency_m_excng_rate_params
      params.require(:currency_m_excng_rate).permit(:currency_cd, :exchng_rate_ver, :exchng_rate, :start_date, :end_date, :rgstr_dt, :rgstr_usr, :lst_upd_dt, :lst_upd_usr)
    end
end
