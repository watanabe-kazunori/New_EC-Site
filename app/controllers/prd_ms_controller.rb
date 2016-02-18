class PrdMsController < ApplicationController
  before_action :set_prd_m, only: [:show, :edit, :update, :destroy]

  # GET /prd_ms
  # GET /prd_ms.json
  def index
    @prd_ms = PrdM.all
  end

  # GET /prd_ms/1
  # GET /prd_ms/1.json
  def show
  end

  # GET /prd_ms/new
  def new
    @prd_m = PrdM.new
  end

  # GET /prd_ms/1/edit
  def edit
  end

  # POST /prd_ms
  # POST /prd_ms.json
  def create
    @prd_m = PrdM.new(prd_m_params)

    respond_to do |format|
      if @prd_m.save
        format.html { redirect_to @prd_m, notice: 'Prd m was successfully created.' }
        format.json { render :show, status: :created, location: @prd_m }
      else
        format.html { render :new }
        format.json { render json: @prd_m.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prd_ms/1
  # PATCH/PUT /prd_ms/1.json
  def update
    respond_to do |format|
      if @prd_m.update(prd_m_params)
        format.html { redirect_to @prd_m, notice: 'Prd m was successfully updated.' }
        format.json { render :show, status: :ok, location: @prd_m }
      else
        format.html { render :edit }
        format.json { render json: @prd_m.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prd_ms/1
  # DELETE /prd_ms/1.json
  def destroy
    @prd_m.destroy
    respond_to do |format|
      format.html { redirect_to prd_ms_url, notice: 'Prd m was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prd_m
      @prd_m = PrdM.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prd_m_params
      params.require(:prd_m).permit(:SKU, :SKU_DVLPR, :SKU_SOURCE_PRD, :PRD_NAME, :PRD_NAME, :PRD_NAME_SUBTITLE, :PRD_DVLPR_ORG_NAME, :PRD_CTGRY_CD, :PRD_TYPE, :SP_PRD_TYPE, :SET_PRD_F, :SET_PRD_TYPE, :SALE_F, :RCVNG_PLCNT_PRD_F, :DLVRY_LD_TIME, :DB_PRD_DLVRY_MTHD, :LIC_TYPE, :LIC_FROM, :LIC_TO, :DSTRBTR_DISP_F, :PRD_ST, :ACDMC_LIC_F, :PRD_DLVRY_MTHD, :PRD_DESC, :PRD_NOTE, :PRD_NOTICE, :PRD_OTHER_INFO, :URL_PRD, :URL_INSTALL_GUID, :URL_LIC_AUTH_GUID, :URL_INSTALLER, :URL_PRD_IMAGE, :URL_DL, :MEMO, :SUBSCRIPTION_LIC_TERM, :SUBSCRIPTION_LIC_TERM_UNIT, :MNT_LIC_TERM, :MNT_LIC_TERM_UNIT, :ACCNT_CD_DVLPR, :ACCNT_CD_VNDR, :RGSTR_DT, :RGSTR_USR, :LST_UPD_DT, :LST_UPD_USR)
    end
end
