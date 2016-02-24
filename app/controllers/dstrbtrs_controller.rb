class DstrbtrsController < ApplicationController
    before_action :set_dstrbtr, only: [:show, :edit, :update, :destroy]
  
  def index
    @dstrbtrs = Dstrbtr.all
  end

  def show
  end

  def new
    @dstrbtr = Dstrbtr.new
  end

  def edit
  end

  def create
    @dstrbtr = Dstrbtr.new(dstrbtr_params)

    respond_to do |format|
      if @dstrbtr.save
        format.html { redirect_to @dstrbtr, notice: '新規に流通代理店が作成されました。' }
     else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @dstrbtr.update(dstrbtr_params)
        format.html { redirect_to @dstrbtr, notice: '流通代理店が正常に更新されました。' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @dstrbtr.destroy
    respond_to do |format|
      format.html { redirect_to dstrbtrs_url, notice: '流通代理店が正常に削除されました。' }
    end
  end

  private
    def set_Dstrbtr    @dstrbtr = dstrbtr.find(params[:id])
    end

    def dstrbtr_params
      params.require(:dstrbtr).permit(:dstrbtr_cd, :dstrbtr_type_1, :dstrbtr_type_2, :com_ind, :dstrbtr_name, :dstrbtr_name_e, :country_cd, :zip, :prefecture_no, :city, :area, :bld, :print_address, :print_address_e, :tel, :email, :fax, :memo, :rgstr_usr, :last_upd_usr )
    end
end
