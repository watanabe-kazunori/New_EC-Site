class WhlSlPricePttrnWhlSlPriceXrefsController < ApplicationController
  before_action :set_whl_sl_price_pttrn_whl_sl_price_xref, only: [:show, :edit, :update, :destroy]

  # GET /whl_sl_price_pttrn_whl_sl_price_xrefs
  # GET /whl_sl_price_pttrn_whl_sl_price_xrefs.json
  def index
    @whl_sl_price_pttrn_whl_sl_price_xrefs = WhlSlPricePttrnWhlSlPriceXref.all
  end

  # GET /whl_sl_price_pttrn_whl_sl_price_xrefs/1
  # GET /whl_sl_price_pttrn_whl_sl_price_xrefs/1.json
  def show
  end

  # GET /whl_sl_price_pttrn_whl_sl_price_xrefs/new
  def new
    @whl_sl_price_pttrn_whl_sl_price_xref = WhlSlPricePttrnWhlSlPriceXref.new
  end

  # GET /whl_sl_price_pttrn_whl_sl_price_xrefs/1/edit
  def edit
  end

  # POST /whl_sl_price_pttrn_whl_sl_price_xrefs
  # POST /whl_sl_price_pttrn_whl_sl_price_xrefs.json
  def create
    @whl_sl_price_pttrn_whl_sl_price_xref = WhlSlPricePttrnWhlSlPriceXref.new(whl_sl_price_pttrn_whl_sl_price_xref_params)

    respond_to do |format|
      if @whl_sl_price_pttrn_whl_sl_price_xref.save
        format.html { redirect_to @whl_sl_price_pttrn_whl_sl_price_xref, notice: 'Whl sl price pttrn whl sl price xref was successfully created.' }
        format.json { render :show, status: :created, location: @whl_sl_price_pttrn_whl_sl_price_xref }
      else
        format.html { render :new }
        format.json { render json: @whl_sl_price_pttrn_whl_sl_price_xref.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /whl_sl_price_pttrn_whl_sl_price_xrefs/1
  # PATCH/PUT /whl_sl_price_pttrn_whl_sl_price_xrefs/1.json
  def update
    respond_to do |format|
      if @whl_sl_price_pttrn_whl_sl_price_xref.update(whl_sl_price_pttrn_whl_sl_price_xref_params)
        format.html { redirect_to @whl_sl_price_pttrn_whl_sl_price_xref, notice: 'Whl sl price pttrn whl sl price xref was successfully updated.' }
        format.json { render :show, status: :ok, location: @whl_sl_price_pttrn_whl_sl_price_xref }
      else
        format.html { render :edit }
        format.json { render json: @whl_sl_price_pttrn_whl_sl_price_xref.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /whl_sl_price_pttrn_whl_sl_price_xrefs/1
  # DELETE /whl_sl_price_pttrn_whl_sl_price_xrefs/1.json
  def destroy
    @whl_sl_price_pttrn_whl_sl_price_xref.destroy
    respond_to do |format|
      format.html { redirect_to whl_sl_price_pttrn_whl_sl_price_xrefs_url, notice: 'Whl sl price pttrn whl sl price xref was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_whl_sl_price_pttrn_whl_sl_price_xref
      @whl_sl_price_pttrn_whl_sl_price_xref = WhlSlPricePttrnWhlSlPriceXref.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def whl_sl_price_pttrn_whl_sl_price_xref_params
      params.require(:whl_sl_price_pttrn_whl_sl_price_xref).permit(:ptrn_cd, :sku, :whl_sl_price_type, :whl_sl_price_ver, :string)
    end
end
