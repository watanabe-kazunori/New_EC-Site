class CurrencyMsController < ApplicationController
  before_action :set_currency_m, only: [:show, :edit, :update, :destroy]

  # GET /currency_ms
  # GET /currency_ms.json
  def index
    @currency_ms = CurrencyM.all
  end

  # GET /currency_ms/1
  # GET /currency_ms/1.json
  def show
  end

  # GET /currency_ms/new
  def new
    @currency_m = CurrencyM.new
  end

  # GET /currency_ms/1/edit
  def edit
  end

  # POST /currency_ms
  # POST /currency_ms.json
  def create
    @currency_m = CurrencyM.new(currency_m_params)

    respond_to do |format|
      if @currency_m.save
        format.html { redirect_to @currency_m, notice: 'Currency m was successfully created.' }
        format.json { render :show, status: :created, location: @currency_m }
      else
        format.html { render :new }
        format.json { render json: @currency_m.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /currency_ms/1
  # PATCH/PUT /currency_ms/1.json
  def update
    respond_to do |format|
      if @currency_m.update(currency_m_params)
        format.html { redirect_to @currency_m, notice: 'Currency m was successfully updated.' }
        format.json { render :show, status: :ok, location: @currency_m }
      else
        format.html { render :edit }
        format.json { render json: @currency_m.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /currency_ms/1
  # DELETE /currency_ms/1.json
  def destroy
    @currency_m.destroy
    respond_to do |format|
      format.html { redirect_to currency_ms_url, notice: 'Currency m was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_currency_m
      @currency_m = CurrencyM.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def currency_m_params
      params.require(:currency_m).permit(:currency_cd, :currency_sign, :currency_name, :currency_name_e, :currency_unit, :currency_unit_e)
    end
end
