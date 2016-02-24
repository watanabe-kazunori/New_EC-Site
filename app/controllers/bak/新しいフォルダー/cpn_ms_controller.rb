# coding: utf-8
class CpnMsController < ApplicationController
  before_action :set_cpn_m, only: [:show, :edit, :update, :destroy]

  # GET /cpn_ms
  # GET /cpn_ms.json
  def index
    @cpn_ms = CpnM.all
  end

  # GET /cpn_ms/1
  # GET /cpn_ms/1.json
  def show
  end

  # GET /cpn_ms/new
  def new
    @cpn_m = CpnM.new
  end

  # GET /cpn_ms/1/edit
  def edit
  end

  # POST /cpn_ms
  # POST /cpn_ms.json
  def create
    @cpn_m = CpnM.new(cpn_m_params)

    respond_to do |format|
      if @cpn_m.save
        format.html { redirect_to @cpn_m, notice: 'Cpn m was successfully created.' }
        format.json { render :show, status: :created, location: @cpn_m }
      else
        format.html { render :new }
        format.json { render json: @cpn_m.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cpn_ms/1
  # PATCH/PUT /cpn_ms/1.json
  def update
    respond_to do |format|
      if @cpn_m.update(cpn_m_params)
        format.html { redirect_to @cpn_m, notice: 'Cpn m was successfully updated.' }
        format.json { render :show, status: :ok, location: @cpn_m }
      else
        format.html { render :edit }
        format.json { render json: @cpn_m.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cpn_ms/1
  # DELETE /cpn_ms/1.json
  def destroy
    @cpn_m.destroy
    respond_to do |format|
      format.html { redirect_to cpn_ms_url, notice: 'Cpn m was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cpn_m
      @cpn_m = CpnM.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cpn_m_params
      params.require(:cpn_m).permit(:CPN_ID, :CPN_CD, :CPN_ST, :CPN_TITLE, :CPN_CLS, :CPN_DISCNT_TYPE, :VNDR_CPN, :USE_LIMIT, :START_DT, :EXPIRATION_DT, :DSCNT_VALUE, :DSCNT_RATE, :TRGT_PRD_CNDTN, :EXCLD_PRD_CNDTN)
    end

    def product_params
      params
        .require(:form_product)
        .permit(Form::Product::REGISTRABLE_ATTRIBUTES)
    end
    
    
end
