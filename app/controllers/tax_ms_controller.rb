class TaxMsController < ApplicationController
  before_action :set_tax_m, only: [:show, :edit, :update, :destroy]

  # GET /tax_ms
  # GET /tax_ms.json
  def index
    @tax_ms = TaxM.all
  end

  # GET /tax_ms/1
  # GET /tax_ms/1.json
  def show
  end

  # GET /tax_ms/new
  def new
    @tax_m = TaxM.new
  end

  # GET /tax_ms/1/edit
  def edit
  end

  # POST /tax_ms
  # POST /tax_ms.json
  def create
    @tax_m = TaxM.new(tax_m_params)

    respond_to do |format|
      if @tax_m.save
        format.html { redirect_to @tax_m, notice: 'Tax m was successfully created.' }
        format.json { render :show, status: :created, location: @tax_m }
      else
        format.html { render :new }
        format.json { render json: @tax_m.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tax_ms/1
  # PATCH/PUT /tax_ms/1.json
  def update
    respond_to do |format|
      if @tax_m.update(tax_m_params)
        format.html { redirect_to @tax_m, notice: 'Tax m was successfully updated.' }
        format.json { render :show, status: :ok, location: @tax_m }
      else
        format.html { render :edit }
        format.json { render json: @tax_m.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tax_ms/1
  # DELETE /tax_ms/1.json
  def destroy
    @tax_m.destroy
    respond_to do |format|
      format.html { redirect_to tax_ms_url, notice: 'Tax m was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tax_m
      @tax_m = TaxM.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tax_m_params
      params.require(:tax_m).permit(:tax_ver, :tax_rate, :start_date, :end_date)
    end
end
