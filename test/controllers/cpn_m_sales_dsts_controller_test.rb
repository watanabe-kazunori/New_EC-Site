require 'test_helper'

class CpnMSalesDstsControllerTest < ActionController::TestCase
  setup do
    @cpn_m_sales_dst = cpn_m_sales_dsts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cpn_m_sales_dsts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cpn_m_sales_dst" do
    assert_difference('CpnMSalesDst.count') do
      post :create, cpn_m_sales_dst: { accnt_cd: @cpn_m_sales_dst.accnt_cd, cpn_id: @cpn_m_sales_dst.cpn_id }
    end

    assert_redirected_to cpn_m_sales_dst_path(assigns(:cpn_m_sales_dst))
  end

  test "should show cpn_m_sales_dst" do
    get :show, id: @cpn_m_sales_dst
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cpn_m_sales_dst
    assert_response :success
  end

  test "should update cpn_m_sales_dst" do
    patch :update, id: @cpn_m_sales_dst, cpn_m_sales_dst: { accnt_cd: @cpn_m_sales_dst.accnt_cd, cpn_id: @cpn_m_sales_dst.cpn_id }
    assert_redirected_to cpn_m_sales_dst_path(assigns(:cpn_m_sales_dst))
  end

  test "should destroy cpn_m_sales_dst" do
    assert_difference('CpnMSalesDst.count', -1) do
      delete :destroy, id: @cpn_m_sales_dst
    end

    assert_redirected_to cpn_m_sales_dsts_path
  end
end
