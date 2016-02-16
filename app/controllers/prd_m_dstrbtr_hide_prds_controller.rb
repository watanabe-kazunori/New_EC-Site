class PrdMDstrbtrHidePrdsController < ApplicationController
  before_action :set_prd_m_dstrbtr_hide_prd, only: [:show, :edit, :update, :destroy]

  # GET /prd_m_dstrbtr_hide_prds
  # GET /prd_m_dstrbtr_hide_prds.json
  def index
    @prd_m_dstrbtr_hide_prds = PrdMDstrbtrHidePrd.all
  end

  # GET /prd_m_dstrbtr_hide_prds/1
  # GET /prd_m_dstrbtr_hide_prds/1.json
  def show
  end

  # GET /prd_m_dstrbtr_hide_prds/new
  def new
    @prd_m_dstrbtr_hide_prd = PrdMDstrbtrHidePrd.new
  end

  # GET /prd_m_dstrbtr_hide_prds/1/edit
  def edit
  end

  # POST /prd_m_dstrbtr_hide_prds
  # POST /prd_m_dstrbtr_hide_prds.json
  def create
    @prd_m_dstrbtr_hide_prd = PrdMDstrbtrHidePrd.new(prd_m_dstrbtr_hide_prd_params)

    respond_to do |format|
      if @prd_m_dstrbtr_hide_prd.save
        format.html { redirect_to @prd_m_dstrbtr_hide_prd, notice: 'Prd m dstrbtr hide prd was successfully created.' }
        format.json { render :show, status: :created, location: @prd_m_dstrbtr_hide_prd }
      else
        format.html { render :new }
        format.json { render json: @prd_m_dstrbtr_hide_prd.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prd_m_dstrbtr_hide_prds/1
  # PATCH/PUT /prd_m_dstrbtr_hide_prds/1.json
  def update
    respond_to do |format|
      if @prd_m_dstrbtr_hide_prd.update(prd_m_dstrbtr_hide_prd_params)
        format.html { redirect_to @prd_m_dstrbtr_hide_prd, notice: 'Prd m dstrbtr hide prd was successfully updated.' }
        format.json { render :show, status: :ok, location: @prd_m_dstrbtr_hide_prd }
      else
        format.html { render :edit }
        format.json { render json: @prd_m_dstrbtr_hide_prd.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prd_m_dstrbtr_hide_prds/1
  # DELETE /prd_m_dstrbtr_hide_prds/1.json
  def destroy
    @prd_m_dstrbtr_hide_prd.destroy
    respond_to do |format|
      format.html { redirect_to prd_m_dstrbtr_hide_prds_url, notice: 'Prd m dstrbtr hide prd was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prd_m_dstrbtr_hide_prd
      @prd_m_dstrbtr_hide_prd = PrdMDstrbtrHidePrd.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prd_m_dstrbtr_hide_prd_params
      params.require(:prd_m_dstrbtr_hide_prd).permit(:sku, :accnt_cd)
    end
end
