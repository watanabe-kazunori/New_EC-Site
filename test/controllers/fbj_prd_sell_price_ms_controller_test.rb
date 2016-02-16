require 'test_helper'

class FbjPrdSellPriceMsControllerTest < ActionController::TestCase
  setup do
    @fbj_prd_sell_price_m = fbj_prd_sell_price_ms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fbj_prd_sell_price_ms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fbj_prd_sell_price_m" do
    assert_difference('FbjPrdSellPriceM.count') do
      post :create, fbj_prd_sell_price_m: { applctn_end_dt: @fbj_prd_sell_price_m.applctn_end_dt, applctn_start_dt: @fbj_prd_sell_price_m.applctn_start_dt, comm_rate_ver: @fbj_prd_sell_price_m.comm_rate_ver, cp_dscnt_rate: @fbj_prd_sell_price_m.cp_dscnt_rate, currency_cd: @fbj_prd_sell_price_m.currency_cd, exchng_rate_ver: @fbj_prd_sell_price_m.exchng_rate_ver, lst_updt_dt: @fbj_prd_sell_price_m.lst_updt_dt, lst_updt_usr: @fbj_prd_sell_price_m.lst_updt_usr, pre_cp_sell_price: @fbj_prd_sell_price_m.pre_cp_sell_price, rgstr_dtrgstr_dt: @fbj_prd_sell_price_m.rgstr_dtrgstr_dt, rgstr_usr: @fbj_prd_sell_price_m.rgstr_usr, sell_price_ver: @fbj_prd_sell_price_m.sell_price_ver, sku: @fbj_prd_sell_price_m.sku, tax_ex_price: @fbj_prd_sell_price_m.tax_ex_price, tax_in_price: @fbj_prd_sell_price_m.tax_in_price, tax_ver: @fbj_prd_sell_price_m.tax_ver }
    end

    assert_redirected_to fbj_prd_sell_price_m_path(assigns(:fbj_prd_sell_price_m))
  end

  test "should show fbj_prd_sell_price_m" do
    get :show, id: @fbj_prd_sell_price_m
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fbj_prd_sell_price_m
    assert_response :success
  end

  test "should update fbj_prd_sell_price_m" do
    patch :update, id: @fbj_prd_sell_price_m, fbj_prd_sell_price_m: { applctn_end_dt: @fbj_prd_sell_price_m.applctn_end_dt, applctn_start_dt: @fbj_prd_sell_price_m.applctn_start_dt, comm_rate_ver: @fbj_prd_sell_price_m.comm_rate_ver, cp_dscnt_rate: @fbj_prd_sell_price_m.cp_dscnt_rate, currency_cd: @fbj_prd_sell_price_m.currency_cd, exchng_rate_ver: @fbj_prd_sell_price_m.exchng_rate_ver, lst_updt_dt: @fbj_prd_sell_price_m.lst_updt_dt, lst_updt_usr: @fbj_prd_sell_price_m.lst_updt_usr, pre_cp_sell_price: @fbj_prd_sell_price_m.pre_cp_sell_price, rgstr_dtrgstr_dt: @fbj_prd_sell_price_m.rgstr_dtrgstr_dt, rgstr_usr: @fbj_prd_sell_price_m.rgstr_usr, sell_price_ver: @fbj_prd_sell_price_m.sell_price_ver, sku: @fbj_prd_sell_price_m.sku, tax_ex_price: @fbj_prd_sell_price_m.tax_ex_price, tax_in_price: @fbj_prd_sell_price_m.tax_in_price, tax_ver: @fbj_prd_sell_price_m.tax_ver }
    assert_redirected_to fbj_prd_sell_price_m_path(assigns(:fbj_prd_sell_price_m))
  end

  test "should destroy fbj_prd_sell_price_m" do
    assert_difference('FbjPrdSellPriceM.count', -1) do
      delete :destroy, id: @fbj_prd_sell_price_m
    end

    assert_redirected_to fbj_prd_sell_price_ms_path
  end
end
