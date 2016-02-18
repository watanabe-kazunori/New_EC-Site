class DstrbtrMsController < ApplicationController
  before_action :set_dstrbtr_m, only: [:show, :edit, :update, :destroy]

  # GET /dstrbtr_ms
  # GET /dstrbtr_ms.json
  def index
    @dstrbtr_ms = DstrbtrM.all
  end

  # GET /dstrbtr_ms/1
  # GET /dstrbtr_ms/1.json
  def show
  end

  # GET /dstrbtr_ms/new
  def new
    @dstrbtr_m = DstrbtrM.new
  end

  # GET /dstrbtr_ms/1/edit
  def edit
  end

  # POST /dstrbtr_ms
  # POST /dstrbtr_ms.json
  def create
    @dstrbtr_m = DstrbtrM.new(dstrbtr_m_params)

    respond_to do |format|
      if @dstrbtr_m.save
        format.html { redirect_to @dstrbtr_m, notice: 'Dstrbtr m was successfully created.' }
        format.json { render :show, status: :created, location: @dstrbtr_m }
      else
        format.html { render :new }
        format.json { render json: @dstrbtr_m.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dstrbtr_ms/1
  # PATCH/PUT /dstrbtr_ms/1.json
  def update
    respond_to do |format|
      if @dstrbtr_m.update(dstrbtr_m_params)
        format.html { redirect_to @dstrbtr_m, notice: 'Dstrbtr m was successfully updated.' }
        format.json { render :show, status: :ok, location: @dstrbtr_m }
      else
        format.html { render :edit }
        format.json { render json: @dstrbtr_m.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dstrbtr_ms/1
  # DELETE /dstrbtr_ms/1.json
  def destroy
    @dstrbtr_m.destroy
    respond_to do |format|
      format.html { redirect_to dstrbtr_ms_url, notice: 'Dstrbtr m was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dstrbtr_m
      @dstrbtr_m = DstrbtrM.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dstrbtr_m_params
      params.require(:dstrbtr_m).permit(:accnt_cd, :cntrct_start_date, :cntrct_start_date, :cntrct_renewal_date, :cntrct_next_renewal_date, :cntrct_end_date, :rgstr_date, :ptrn_cd)
    end
end
