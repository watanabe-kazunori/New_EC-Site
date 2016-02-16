require 'test_helper'

class PrdMWhlSlPricEsControllerTest < ActionController::TestCase
  setup do
    @prd_m_whl_sl_price = prd_m_whl_sl_prices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:prd_m_whl_sl_prices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create prd_m_whl_sl_price" do
    assert_difference('PrdMWhlSlPrice.count') do
      post :create, prd_m_whl_sl_price: { CP_PRICE_DSCNT: @prd_m_whl_sl_price.CP_PRICE_DSCNT, CP_PRICE_DSCNT_RATE: @prd_m_whl_sl_price.CP_PRICE_DSCNT_RATE, END_DATE: @prd_m_whl_sl_price.END_DATE, LST_UPD_DT: @prd_m_whl_sl_price.LST_UPD_DT, LST_UPD_USR: @prd_m_whl_sl_price.LST_UPD_USR, PRE_CP_WHL_SL_PRICE: @prd_m_whl_sl_price.PRE_CP_WHL_SL_PRICE, PRE_CP_WHL_SL_PRIE_RATE: @prd_m_whl_sl_price.PRE_CP_WHL_SL_PRIE_RATE, RGSTR_DT: @prd_m_whl_sl_price.RGSTR_DT, RGSTR_USR: @prd_m_whl_sl_price.RGSTR_USR, SKU: @prd_m_whl_sl_price.SKU, START_DATE: @prd_m_whl_sl_price.START_DATE, WHL_SL_PRICE: @prd_m_whl_sl_price.WHL_SL_PRICE, WHL_SL_PRICE_RATE: @prd_m_whl_sl_price.WHL_SL_PRICE_RATE, WHL_SL_PRICE_TYPE: @prd_m_whl_sl_price.WHL_SL_PRICE_TYPE, WHL_SL_PRICE_VER: @prd_m_whl_sl_price.WHL_SL_PRICE_VER }
    end

    assert_redirected_to prd_m_whl_sl_price_path(assigns(:prd_m_whl_sl_price))
  end

  test "should show prd_m_whl_sl_price" do
    get :show, id: @prd_m_whl_sl_price
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @prd_m_whl_sl_price
    assert_response :success
  end

  test "should update prd_m_whl_sl_price" do
    patch :update, id: @prd_m_whl_sl_price, prd_m_whl_sl_price: { CP_PRICE_DSCNT: @prd_m_whl_sl_price.CP_PRICE_DSCNT, CP_PRICE_DSCNT_RATE: @prd_m_whl_sl_price.CP_PRICE_DSCNT_RATE, END_DATE: @prd_m_whl_sl_price.END_DATE, LST_UPD_DT: @prd_m_whl_sl_price.LST_UPD_DT, LST_UPD_USR: @prd_m_whl_sl_price.LST_UPD_USR, PRE_CP_WHL_SL_PRICE: @prd_m_whl_sl_price.PRE_CP_WHL_SL_PRICE, PRE_CP_WHL_SL_PRIE_RATE: @prd_m_whl_sl_price.PRE_CP_WHL_SL_PRIE_RATE, RGSTR_DT: @prd_m_whl_sl_price.RGSTR_DT, RGSTR_USR: @prd_m_whl_sl_price.RGSTR_USR, SKU: @prd_m_whl_sl_price.SKU, START_DATE: @prd_m_whl_sl_price.START_DATE, WHL_SL_PRICE: @prd_m_whl_sl_price.WHL_SL_PRICE, WHL_SL_PRICE_RATE: @prd_m_whl_sl_price.WHL_SL_PRICE_RATE, WHL_SL_PRICE_TYPE: @prd_m_whl_sl_price.WHL_SL_PRICE_TYPE, WHL_SL_PRICE_VER: @prd_m_whl_sl_price.WHL_SL_PRICE_VER }
    assert_redirected_to prd_m_whl_sl_price_path(assigns(:prd_m_whl_sl_price))
  end

  test "should destroy prd_m_whl_sl_price" do
    assert_difference('PrdMWhlSlPrice.count', -1) do
      delete :destroy, id: @prd_m_whl_sl_price
    end

    assert_redirected_to prd_m_whl_sl_prices_path
  end
end
