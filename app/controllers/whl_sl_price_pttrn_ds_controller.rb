class WhlSlPricePttrnDsController < ApplicationController
  before_action :set_whl_sl_price_pttrn_d, only: [:show, :edit, :update, :destroy]

  # GET /whl_sl_price_pttrn_ds
  # GET /whl_sl_price_pttrn_ds.json
  def index
    @whl_sl_price_pttrn_ds = WhlSlPricePttrnD.all
  end

  # GET /whl_sl_price_pttrn_ds/1
  # GET /whl_sl_price_pttrn_ds/1.json
  def show
  end

  # GET /whl_sl_price_pttrn_ds/new
  def new
    @whl_sl_price_pttrn_d = WhlSlPricePttrnD.new
  end

  # GET /whl_sl_price_pttrn_ds/1/edit
  def edit
  end

  # POST /whl_sl_price_pttrn_ds
  # POST /whl_sl_price_pttrn_ds.json
  def create
    @whl_sl_price_pttrn_d = WhlSlPricePttrnD.new(whl_sl_price_pttrn_d_params)

    respond_to do |format|
      if @whl_sl_price_pttrn_d.save
        format.html { redirect_to @whl_sl_price_pttrn_d, notice: 'Whl sl price pttrn d was successfully created.' }
        format.json { render :show, status: :created, location: @whl_sl_price_pttrn_d }
      else
        format.html { render :new }
        format.json { render json: @whl_sl_price_pttrn_d.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /whl_sl_price_pttrn_ds/1
  # PATCH/PUT /whl_sl_price_pttrn_ds/1.json
  def update
    respond_to do |format|
      if @whl_sl_price_pttrn_d.update(whl_sl_price_pttrn_d_params)
        format.html { redirect_to @whl_sl_price_pttrn_d, notice: 'Whl sl price pttrn d was successfully updated.' }
        format.json { render :show, status: :ok, location: @whl_sl_price_pttrn_d }
      else
        format.html { render :edit }
        format.json { render json: @whl_sl_price_pttrn_d.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /whl_sl_price_pttrn_ds/1
  # DELETE /whl_sl_price_pttrn_ds/1.json
  def destroy
    @whl_sl_price_pttrn_d.destroy
    respond_to do |format|
      format.html { redirect_to whl_sl_price_pttrn_ds_url, notice: 'Whl sl price pttrn d was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_whl_sl_price_pttrn_d
      @whl_sl_price_pttrn_d = WhlSlPricePttrnD.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def whl_sl_price_pttrn_d_params
      params.require(:whl_sl_price_pttrn_d).permit(:ptrn_cd, :sku, :whl_sl_price_type)
    end
end
