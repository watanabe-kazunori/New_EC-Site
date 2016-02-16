class CpnTypesController < ApplicationController
  before_action :set_cpn_type, only: [:show, :edit, :update, :destroy]

  # GET /cpn_types
  # GET /cpn_types.json
  def index
    @cpn_types = CpnType.all
  end

  # GET /cpn_types/1
  # GET /cpn_types/1.json
  def show
  end

  # GET /cpn_types/new
  def new
    @cpn_type = CpnType.new
  end

  # GET /cpn_types/1/edit
  def edit
  end

  # POST /cpn_types
  # POST /cpn_types.json
  def create
    @cpn_type = CpnType.new(cpn_type_params)

    respond_to do |format|
      if @cpn_type.save
        format.html { redirect_to @cpn_type, notice: 'Cpn type was successfully created.' }
        format.json { render :show, status: :created, location: @cpn_type }
      else
        format.html { render :new }
        format.json { render json: @cpn_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cpn_types/1
  # PATCH/PUT /cpn_types/1.json
  def update
    respond_to do |format|
      if @cpn_type.update(cpn_type_params)
        format.html { redirect_to @cpn_type, notice: 'Cpn type was successfully updated.' }
        format.json { render :show, status: :ok, location: @cpn_type }
      else
        format.html { render :edit }
        format.json { render json: @cpn_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cpn_types/1
  # DELETE /cpn_types/1.json
  def destroy
    @cpn_type.destroy
    respond_to do |format|
      format.html { redirect_to cpn_types_url, notice: 'Cpn type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cpn_type
      @cpn_type = CpnType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cpn_type_params
      params.require(:cpn_type).permit(:id, :name)
    end
end
