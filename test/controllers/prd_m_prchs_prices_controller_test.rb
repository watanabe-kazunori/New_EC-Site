require 'test_helper'

class PrdMPrchsPricesControllerTest < ActionController::TestCase
  setup do
    @prd_m_prchs_price = prd_m_prchs_prices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:prd_m_prchs_prices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create prd_m_prchs_price" do
    assert_difference('PrdMPrchsPrice.count') do
      post :create, prd_m_prchs_price: { currency_cd: @prd_m_prchs_price.currency_cd, end_date: @prd_m_prchs_price.end_date, list_price: @prd_m_prchs_price.list_price, lst_upd_dt: @prd_m_prchs_price.lst_upd_dt, lst_upda_usr: @prd_m_prchs_price.lst_upda_usr, prchs_price: @prd_m_prchs_price.prchs_price, prchs_price_rate: @prd_m_prchs_price.prchs_price_rate, prchs_price_ver: @prd_m_prchs_price.prchs_price_ver, rgstr_dt: @prd_m_prchs_price.rgstr_dt, rgstr_usr: @prd_m_prchs_price.rgstr_usr, sku: @prd_m_prchs_price.sku, start_date: @prd_m_prchs_price.start_date }
    end

    assert_redirected_to prd_m_prchs_price_path(assigns(:prd_m_prchs_price))
  end

  test "should show prd_m_prchs_price" do
    get :show, id: @prd_m_prchs_price
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @prd_m_prchs_price
    assert_response :success
  end

  test "should update prd_m_prchs_price" do
    patch :update, id: @prd_m_prchs_price, prd_m_prchs_price: { currency_cd: @prd_m_prchs_price.currency_cd, end_date: @prd_m_prchs_price.end_date, list_price: @prd_m_prchs_price.list_price, lst_upd_dt: @prd_m_prchs_price.lst_upd_dt, lst_upda_usr: @prd_m_prchs_price.lst_upda_usr, prchs_price: @prd_m_prchs_price.prchs_price, prchs_price_rate: @prd_m_prchs_price.prchs_price_rate, prchs_price_ver: @prd_m_prchs_price.prchs_price_ver, rgstr_dt: @prd_m_prchs_price.rgstr_dt, rgstr_usr: @prd_m_prchs_price.rgstr_usr, sku: @prd_m_prchs_price.sku, start_date: @prd_m_prchs_price.start_date }
    assert_redirected_to prd_m_prchs_price_path(assigns(:prd_m_prchs_price))
  end

  test "should destroy prd_m_prchs_price" do
    assert_difference('PrdMPrchsPrice.count', -1) do
      delete :destroy, id: @prd_m_prchs_price
    end

    assert_redirected_to prd_m_prchs_prices_path
  end
end
