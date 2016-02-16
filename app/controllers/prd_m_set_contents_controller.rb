class PrdMSetContentsController < ApplicationController
  before_action :set_prd_m_set_content, only: [:show, :edit, :update, :destroy]

  # GET /prd_m_set_contents
  # GET /prd_m_set_contents.json
  def index
    @prd_m_set_contents = PrdMSetContent.all
  end

  # GET /prd_m_set_contents/1
  # GET /prd_m_set_contents/1.json
  def show
  end

  # GET /prd_m_set_contents/new
  def new
    @prd_m_set_content = PrdMSetContent.new
  end

  # GET /prd_m_set_contents/1/edit
  def edit
  end

  # POST /prd_m_set_contents
  # POST /prd_m_set_contents.json
  def create
    @prd_m_set_content = PrdMSetContent.new(prd_m_set_content_params)

    respond_to do |format|
      if @prd_m_set_content.save
        format.html { redirect_to @prd_m_set_content, notice: 'Prd m set content was successfully created.' }
        format.json { render :show, status: :created, location: @prd_m_set_content }
      else
        format.html { render :new }
        format.json { render json: @prd_m_set_content.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prd_m_set_contents/1
  # PATCH/PUT /prd_m_set_contents/1.json
  def update
    respond_to do |format|
      if @prd_m_set_content.update(prd_m_set_content_params)
        format.html { redirect_to @prd_m_set_content, notice: 'Prd m set content was successfully updated.' }
        format.json { render :show, status: :ok, location: @prd_m_set_content }
      else
        format.html { render :edit }
        format.json { render json: @prd_m_set_content.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prd_m_set_contents/1
  # DELETE /prd_m_set_contents/1.json
  def destroy
    @prd_m_set_content.destroy
    respond_to do |format|
      format.html { redirect_to prd_m_set_contents_url, notice: 'Prd m set content was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prd_m_set_content
      @prd_m_set_content = PrdMSetContent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prd_m_set_content_params
      params.require(:prd_m_set_content).permit(:sku, :sku_content)
    end
end
