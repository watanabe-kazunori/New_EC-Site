class PrdEffectClsMsController < ApplicationController
  before_action :set_prd_effect_cls_m, only: [:show, :edit, :update, :destroy]

  # GET /prd_effect_cls_ms
  # GET /prd_effect_cls_ms.json
  def index
    @prd_effect_cls_ms = PrdEffectClsM.all
  end

  # GET /prd_effect_cls_ms/1
  # GET /prd_effect_cls_ms/1.json
  def show
  end

  # GET /prd_effect_cls_ms/new
  def new
    @prd_effect_cls_m = PrdEffectClsM.new
  end

  # GET /prd_effect_cls_ms/1/edit
  def edit
  end

  # POST /prd_effect_cls_ms
  # POST /prd_effect_cls_ms.json
  def create
    @prd_effect_cls_m = PrdEffectClsM.new(prd_effect_cls_m_params)

    respond_to do |format|
      if @prd_effect_cls_m.save
        format.html { redirect_to @prd_effect_cls_m, notice: 'Prd effect cls m was successfully created.' }
        format.json { render :show, status: :created, location: @prd_effect_cls_m }
      else
        format.html { render :new }
        format.json { render json: @prd_effect_cls_m.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prd_effect_cls_ms/1
  # PATCH/PUT /prd_effect_cls_ms/1.json
  def update
    respond_to do |format|
      if @prd_effect_cls_m.update(prd_effect_cls_m_params)
        format.html { redirect_to @prd_effect_cls_m, notice: 'Prd effect cls m was successfully updated.' }
        format.json { render :show, status: :ok, location: @prd_effect_cls_m }
      else
        format.html { render :edit }
        format.json { render json: @prd_effect_cls_m.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prd_effect_cls_ms/1
  # DELETE /prd_effect_cls_ms/1.json
  def destroy
    @prd_effect_cls_m.destroy
    respond_to do |format|
      format.html { redirect_to prd_effect_cls_ms_url, notice: 'Prd effect cls m was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prd_effect_cls_m
      @prd_effect_cls_m = PrdEffectClsM.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prd_effect_cls_m_params
      params.require(:prd_effect_cls_m).permit(:PRD_EFFECT_CLS_CD, :PRD_EFFECT_CLS_NAME)
    end
end
