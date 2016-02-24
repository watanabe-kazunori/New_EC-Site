require 'test_helper'

class CpnMSalesCntctsControllerTest < ActionController::TestCase
  setup do
    @cpn_m_sales_cntct = cpn_m_sales_cntcts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cpn_m_sales_cntcts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cpn_m_sales_cntct" do
    assert_difference('CpnMSalesCntct.count') do
      post :create, cpn_m_sales_cntct: { accnt_cd_sales_cntct: @cpn_m_sales_cntct.accnt_cd_sales_cntct, cpn_id: @cpn_m_sales_cntct.cpn_id }
    end

    assert_redirected_to cpn_m_sales_cntct_path(assigns(:cpn_m_sales_cntct))
  end

  test "should show cpn_m_sales_cntct" do
    get :show, id: @cpn_m_sales_cntct
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cpn_m_sales_cntct
    assert_response :success
  end

  test "should update cpn_m_sales_cntct" do
    patch :update, id: @cpn_m_sales_cntct, cpn_m_sales_cntct: { accnt_cd_sales_cntct: @cpn_m_sales_cntct.accnt_cd_sales_cntct, cpn_id: @cpn_m_sales_cntct.cpn_id }
    assert_redirected_to cpn_m_sales_cntct_path(assigns(:cpn_m_sales_cntct))
  end

  test "should destroy cpn_m_sales_cntct" do
    assert_difference('CpnMSalesCntct.count', -1) do
      delete :destroy, id: @cpn_m_sales_cntct
    end

    assert_redirected_to cpn_m_sales_cntcts_path
  end
end
