class AccntStaffsController < ApplicationController
    before_action :set_accnt_staff, only: [:show, :edit, :update, :destroy]
  
  def index
    @accnt_staffs = AccntStaff.all
  end

  def show
  end

  def new
    @accnt_staff = AccntStaff.new
  end

  def edit
  end

  def create
    @accnt_staff = AccntStaff.new(accnt_staff_params)

    respond_to do |format|
      if @accnt_staff.save
        format.html { redirect_to @accnt_staff, notice: '新規に取引先担当者が作成されました。' }
     else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @accnt_staff.update(accnt_staff_params)
        format.html { redirect_to @accnt_staff, notice: '取引先担当者が正常に更新されました。' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @accnt_staff.destroy
    respond_to do |format|
      format.html { redirect_to accnt_staffs_url, notice: '取引先担当者が正常に削除されました。' }
    end
  end

  private
    def set_accnt_staff
      @accnt_staff = AccntStaff.find(params[:id])
    end

    def accnt_staff_params
      params.require(:accnt_staff).permit(:id, :staff_id, :accnt_cd, :dept_name, :dept_name_e, :emp_name, :empname_3,
      :country_cd, :zip, :prefecture_no, :city, :area, :bld, :print_address, :print_address_e, :tel,
      :email, :fax, :accnt_cd_billing, :staff_id_billing, :rgstr_usr, :lst_upd_usr )
    end

end
