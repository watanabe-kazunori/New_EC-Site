class PrdCtgryMsController < ApplicationController
  before_action :set_prd_ctgry_m, only: [:show, :edit, :update, :destroy]

  # GET /prd_ctgry_ms
  # GET /prd_ctgry_ms.json
  def index
    @prd_ctgry_ms = PrdCtgryM.all
  end

  # GET /prd_ctgry_ms/1
  # GET /prd_ctgry_ms/1.json
  def show
  end

  # GET /prd_ctgry_ms/new
  def new
    @prd_ctgry_m = PrdCtgryM.new
  end

  # GET /prd_ctgry_ms/1/edit
  def edit
  end

  # POST /prd_ctgry_ms
  # POST /prd_ctgry_ms.json
  def create
    @prd_ctgry_m = PrdCtgryM.new(prd_ctgry_m_params)

    respond_to do |format|
      if @prd_ctgry_m.save
        format.html { redirect_to @prd_ctgry_m, notice: 'Prd ctgry m was successfully created.' }
        format.json { render :show, status: :created, location: @prd_ctgry_m }
      else
        format.html { render :new }
        format.json { render json: @prd_ctgry_m.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prd_ctgry_ms/1
  # PATCH/PUT /prd_ctgry_ms/1.json
  def update
    respond_to do |format|
      if @prd_ctgry_m.update(prd_ctgry_m_params)
        format.html { redirect_to @prd_ctgry_m, notice: 'Prd ctgry m was successfully updated.' }
        format.json { render :show, status: :ok, location: @prd_ctgry_m }
      else
        format.html { render :edit }
        format.json { render json: @prd_ctgry_m.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prd_ctgry_ms/1
  # DELETE /prd_ctgry_ms/1.json
  def destroy
    @prd_ctgry_m.destroy
    respond_to do |format|
      format.html { redirect_to prd_ctgry_ms_url, notice: 'Prd ctgry m was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prd_ctgry_m
      @prd_ctgry_m = PrdCtgryM.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prd_ctgry_m_params
      params.require(:prd_ctgry_m).permit(:PRD_CTGRY_CD, :PRD_CTGRY_NAME)
    end
end
