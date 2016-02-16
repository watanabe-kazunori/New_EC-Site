class WhlSlPricePttrnMsController < ApplicationController
  before_action :set_whl_sl_price_pttrn_m, only: [:show, :edit, :update, :destroy]

  # GET /whl_sl_price_pttrn_ms
  # GET /whl_sl_price_pttrn_ms.json
  def index
    @whl_sl_price_pttrn_ms = WhlSlPricePttrnM.all
  end

  # GET /whl_sl_price_pttrn_ms/1
  # GET /whl_sl_price_pttrn_ms/1.json
  def show
  end

  # GET /whl_sl_price_pttrn_ms/new
  def new
    @whl_sl_price_pttrn_m = WhlSlPricePttrnM.new
  end

  # GET /whl_sl_price_pttrn_ms/1/edit
  def edit
  end

  # POST /whl_sl_price_pttrn_ms
  # POST /whl_sl_price_pttrn_ms.json
  def create
    @whl_sl_price_pttrn_m = WhlSlPricePttrnM.new(whl_sl_price_pttrn_m_params)

    respond_to do |format|
      if @whl_sl_price_pttrn_m.save
        format.html { redirect_to @whl_sl_price_pttrn_m, notice: 'Whl sl price pttrn m was successfully created.' }
        format.json { render :show, status: :created, location: @whl_sl_price_pttrn_m }
      else
        format.html { render :new }
        format.json { render json: @whl_sl_price_pttrn_m.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /whl_sl_price_pttrn_ms/1
  # PATCH/PUT /whl_sl_price_pttrn_ms/1.json
  def update
    respond_to do |format|
      if @whl_sl_price_pttrn_m.update(whl_sl_price_pttrn_m_params)
        format.html { redirect_to @whl_sl_price_pttrn_m, notice: 'Whl sl price pttrn m was successfully updated.' }
        format.json { render :show, status: :ok, location: @whl_sl_price_pttrn_m }
      else
        format.html { render :edit }
        format.json { render json: @whl_sl_price_pttrn_m.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /whl_sl_price_pttrn_ms/1
  # DELETE /whl_sl_price_pttrn_ms/1.json
  def destroy
    @whl_sl_price_pttrn_m.destroy
    respond_to do |format|
      format.html { redirect_to whl_sl_price_pttrn_ms_url, notice: 'Whl sl price pttrn m was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_whl_sl_price_pttrn_m
      @whl_sl_price_pttrn_m = WhlSlPricePttrnM.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def whl_sl_price_pttrn_m_params
      params.require(:whl_sl_price_pttrn_m).permit(:ptrn_cd, :pttrn_name, :pttrn_desc)
    end
end
