require 'test_helper'

class DstrbtrWhlSlPricesControllerTest < ActionController::TestCase
  setup do
    @dstrbtr_whl_sl_price = dstrbtr_whl_sl_prices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dstrbtr_whl_sl_prices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dstrbtr_whl_sl_price" do
    assert_difference('DstrbtrWhlSlPrice.count') do
      post :create, dstrbtr_whl_sl_price: { accnt_cd: @dstrbtr_whl_sl_price.accnt_cd, cp_price_dscnt: @dstrbtr_whl_sl_price.cp_price_dscnt, cp_price_dscnt_rate: @dstrbtr_whl_sl_price.cp_price_dscnt_rate, end_date: @dstrbtr_whl_sl_price.end_date, lst_upd_dt: @dstrbtr_whl_sl_price.lst_upd_dt, lst_upd_usr: @dstrbtr_whl_sl_price.lst_upd_usr, pre_cp_whl_sl_price: @dstrbtr_whl_sl_price.pre_cp_whl_sl_price, pre_cp_whl_sl_prie_rate: @dstrbtr_whl_sl_price.pre_cp_whl_sl_prie_rate, rgstr_dt: @dstrbtr_whl_sl_price.rgstr_dt, rgstr_usr: @dstrbtr_whl_sl_price.rgstr_usr, sku: @dstrbtr_whl_sl_price.sku, start_date: @dstrbtr_whl_sl_price.start_date, whl_price_rate: @dstrbtr_whl_sl_price.whl_price_rate, whl_sl_price: @dstrbtr_whl_sl_price.whl_sl_price, whl_sl_price_ver: @dstrbtr_whl_sl_price.whl_sl_price_ver }
    end

    assert_redirected_to dstrbtr_whl_sl_price_path(assigns(:dstrbtr_whl_sl_price))
  end

  test "should show dstrbtr_whl_sl_price" do
    get :show, id: @dstrbtr_whl_sl_price
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dstrbtr_whl_sl_price
    assert_response :success
  end

  test "should update dstrbtr_whl_sl_price" do
    patch :update, id: @dstrbtr_whl_sl_price, dstrbtr_whl_sl_price: { accnt_cd: @dstrbtr_whl_sl_price.accnt_cd, cp_price_dscnt: @dstrbtr_whl_sl_price.cp_price_dscnt, cp_price_dscnt_rate: @dstrbtr_whl_sl_price.cp_price_dscnt_rate, end_date: @dstrbtr_whl_sl_price.end_date, lst_upd_dt: @dstrbtr_whl_sl_price.lst_upd_dt, lst_upd_usr: @dstrbtr_whl_sl_price.lst_upd_usr, pre_cp_whl_sl_price: @dstrbtr_whl_sl_price.pre_cp_whl_sl_price, pre_cp_whl_sl_prie_rate: @dstrbtr_whl_sl_price.pre_cp_whl_sl_prie_rate, rgstr_dt: @dstrbtr_whl_sl_price.rgstr_dt, rgstr_usr: @dstrbtr_whl_sl_price.rgstr_usr, sku: @dstrbtr_whl_sl_price.sku, start_date: @dstrbtr_whl_sl_price.start_date, whl_price_rate: @dstrbtr_whl_sl_price.whl_price_rate, whl_sl_price: @dstrbtr_whl_sl_price.whl_sl_price, whl_sl_price_ver: @dstrbtr_whl_sl_price.whl_sl_price_ver }
    assert_redirected_to dstrbtr_whl_sl_price_path(assigns(:dstrbtr_whl_sl_price))
  end

  test "should destroy dstrbtr_whl_sl_price" do
    assert_difference('DstrbtrWhlSlPrice.count', -1) do
      delete :destroy, id: @dstrbtr_whl_sl_price
    end

    assert_redirected_to dstrbtr_whl_sl_prices_path
  end
end
