require 'test_helper'

class SerialMsControllerTest < ActionController::TestCase
  setup do
    @serial_m = serial_ms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:serial_ms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create serial_m" do
    assert_difference('SerialM.count') do
      post :create, serial_m: { accnt_cd_cstmr: @serial_m.accnt_cd_cstmr, accnt_cd_sales_cntnt: @serial_m.accnt_cd_sales_cntnt, cnsgnmnt_serial_st: @serial_m.cnsgnmnt_serial_st, cnsgnmnt_serial_store_date: @serial_m.cnsgnmnt_serial_store_date, dl_file_name: @serial_m.dl_file_name, dl_pass_cd: @serial_m.dl_pass_cd, dlvry_no: @serial_m.dlvry_no, lst_upd_dt: @serial_m.lst_upd_dt, lst_upd_usr: @serial_m.lst_upd_usr, nfr_f: @serial_m.nfr_f, nfr_rsn: @serial_m.nfr_rsn, os_type: @serial_m.os_type, po_no: @serial_m.po_no, rgstr_dt: @serial_m.rgstr_dt, rgstr_usr: @serial_m.rgstr_usr, serial_id: @serial_m.serial_id, serial_no_1: @serial_m.serial_no_1, serial_no_2: @serial_m.serial_no_2, serial_no_3: @serial_m.serial_no_3, serial_type: @serial_m.serial_type, sku: @serial_m.sku, sku_serial_assngd: @serial_m.sku_serial_assngd, so_item_no: @serial_m.so_item_no, so_no: @serial_m.so_no, upgrd_pre_prd_serial_no: @serial_m.upgrd_pre_prd_serial_no, upgrd_serial_f: @serial_m.upgrd_serial_f, use_type: @serial_m.use_type, web_up_serial: @serial_m.web_up_serial }
    end

    assert_redirected_to serial_m_path(assigns(:serial_m))
  end

  test "should show serial_m" do
    get :show, id: @serial_m
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @serial_m
    assert_response :success
  end

  test "should update serial_m" do
    patch :update, id: @serial_m, serial_m: { accnt_cd_cstmr: @serial_m.accnt_cd_cstmr, accnt_cd_sales_cntnt: @serial_m.accnt_cd_sales_cntnt, cnsgnmnt_serial_st: @serial_m.cnsgnmnt_serial_st, cnsgnmnt_serial_store_date: @serial_m.cnsgnmnt_serial_store_date, dl_file_name: @serial_m.dl_file_name, dl_pass_cd: @serial_m.dl_pass_cd, dlvry_no: @serial_m.dlvry_no, lst_upd_dt: @serial_m.lst_upd_dt, lst_upd_usr: @serial_m.lst_upd_usr, nfr_f: @serial_m.nfr_f, nfr_rsn: @serial_m.nfr_rsn, os_type: @serial_m.os_type, po_no: @serial_m.po_no, rgstr_dt: @serial_m.rgstr_dt, rgstr_usr: @serial_m.rgstr_usr, serial_id: @serial_m.serial_id, serial_no_1: @serial_m.serial_no_1, serial_no_2: @serial_m.serial_no_2, serial_no_3: @serial_m.serial_no_3, serial_type: @serial_m.serial_type, sku: @serial_m.sku, sku_serial_assngd: @serial_m.sku_serial_assngd, so_item_no: @serial_m.so_item_no, so_no: @serial_m.so_no, upgrd_pre_prd_serial_no: @serial_m.upgrd_pre_prd_serial_no, upgrd_serial_f: @serial_m.upgrd_serial_f, use_type: @serial_m.use_type, web_up_serial: @serial_m.web_up_serial }
    assert_redirected_to serial_m_path(assigns(:serial_m))
  end

  test "should destroy serial_m" do
    assert_difference('SerialM.count', -1) do
      delete :destroy, id: @serial_m
    end

    assert_redirected_to serial_ms_path
  end
end
