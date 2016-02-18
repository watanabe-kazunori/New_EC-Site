class CountriesController < ApplicationController
    before_action :set_country, only: [:show, :edit, :update, :destroy]
  
  def index
    @countries = country.all
  end

  def show
  end

  def new
    @country = country.new
  end

  def edit
  end

  def create
    @country = country.new(country_params)

    respond_to do |format|
      if @country.save
        format.html { redirect_to @country, notice: '新規に国地域が作成されました。' }
     else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @country.update(country_params)
        format.html { redirect_to @country, notice: '国地域が正常に更新されました。' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @country.destroy
    respond_to do |format|
      format.html { redirect_to countries_url, notice: '国地域が正常に削除されました。' }
    end
  end

  private
    def set_country
      @country = country.find(params[:id])
    end

    def country_params
      params.require(:country).permit(:country_cd, :country_name, :country_name_e, :currency_cd )
    end
    
end
