class AccntsController < ApplicationController
    before_action :set_accnt, only: [:show, :edit, :update, :destroy]
  
  def index
    @accnts = Accnt.all
  end

  def show
  end

  def new
    @accnt = Accnt.new
  end

  def edit
  end

  def create
    @accnt = Accnt.new(accnt_params)

    respond_to do |format|
      if @accnt.save
        format.html { redirect_to @accnt, notice: '新規に取引先が作成されました。' }
     else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @accnt.update(accnt_params)
        format.html { redirect_to @accnt, notice: '取引先が正常に更新されました。' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @accnt.destroy
    respond_to do |format|
      format.html { redirect_to accnts_url, notice: '取引先が正常に削除されました。' }
    end
  end

  private
    def set_accnt
      @accnt = Accnt.find(params[:id])
    end

    def accnt_params
      params.require(:accnt).permit(:accnt_cd, :accnt_type_1, :accnt_type_2, :com_ind, :accnt_name, :accnt_name_e, :country_cd, :zip, :prefecture_no, :city, :area, :bld, :print_address, :print_address_e, :tel, :email, :fax, :memo, :rgstr_usr, :last_upd_usr )
    end

end
