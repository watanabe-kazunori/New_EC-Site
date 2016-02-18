class PrdMEffectCsLsController < ApplicationController
  before_action :set_prd_m_effect_csl, only: [:show, :edit, :update, :destroy]

  # GET /prd_m_effect_csls
  # GET /prd_m_effect_csls.json
  def index
    @prd_m_effect_csls = PrdMEffectCsl.all
  end

  # GET /prd_m_effect_csls/1
  # GET /prd_m_effect_csls/1.json
  def show
  end

  # GET /prd_m_effect_csls/new
  def new
    @prd_m_effect_csl = PrdMEffectCsl.new
  end

  # GET /prd_m_effect_csls/1/edit
  def edit
  end

  # POST /prd_m_effect_csls
  # POST /prd_m_effect_csls.json
  def create
    @prd_m_effect_csl = PrdMEffectCsl.new(prd_m_effect_csl_params)

    respond_to do |format|
      if @prd_m_effect_csl.save
        format.html { redirect_to @prd_m_effect_csl, notice: 'Prd m effect csl was successfully created.' }
        format.json { render :show, status: :created, location: @prd_m_effect_csl }
      else
        format.html { render :new }
        format.json { render json: @prd_m_effect_csl.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prd_m_effect_csls/1
  # PATCH/PUT /prd_m_effect_csls/1.json
  def update
    respond_to do |format|
      if @prd_m_effect_csl.update(prd_m_effect_csl_params)
        format.html { redirect_to @prd_m_effect_csl, notice: 'Prd m effect csl was successfully updated.' }
        format.json { render :show, status: :ok, location: @prd_m_effect_csl }
      else
        format.html { render :edit }
        format.json { render json: @prd_m_effect_csl.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prd_m_effect_csls/1
  # DELETE /prd_m_effect_csls/1.json
  def destroy
    @prd_m_effect_csl.destroy
    respond_to do |format|
      format.html { redirect_to prd_m_effect_csls_url, notice: 'Prd m effect csl was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prd_m_effect_csl
      @prd_m_effect_csl = PrdMEffectCsl.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prd_m_effect_csl_params
      params.require(:prd_m_effect_csl).permit(:SKU, :PRD_EFFECT_CLS_CD)
    end
end
