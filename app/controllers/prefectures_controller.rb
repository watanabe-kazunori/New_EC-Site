class PrefecturesController < ApplicationController
    before_action :set_prefecture, only: [:show, :edit, :update, :destroy]
  
  def index
    @prefectures = Prefecture.all
  end

  def show
  end

  def new
    @prefecture = Prefecture.new
  end

  def edit
  end

  def create
    @prefecture = Prefecture.new(prefecture_params)

    respond_to do |format|
      if @prefecture.save
        format.html { redirect_to @prefecture, notice: '新規に都道府県マスタが作成されました。' }
     else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @prefecture.update(prefecture_params)
        format.html { redirect_to @prefecture, notice: '都道府県マスタが正常に更新されました。' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @prefecture.destroy
    respond_to do |format|
      format.html { redirect_to prefectures_url, notice: '都道府県マスタが正常に削除されました。' }
    end
  end

  private
    def set_prefecture
      @prefecture = Prefecture.find(params[:id])
    end

    def prefecture_params
      params.require(:prefecture).permit(:prefecture_no, :prefecture_name)
    end
end
