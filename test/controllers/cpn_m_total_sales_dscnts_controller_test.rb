require 'test_helper'

class CpnMTotalSalesDscntsControllerTest < ActionController::TestCase
  setup do
    @cpn_m_total_sales_dscnt = cpn_m_total_sales_dscnts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cpn_m_total_sales_dscnts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cpn_m_total_sales_dscnt" do
    assert_difference('CpnMTotalSalesDscnt.count') do
      post :create, cpn_m_total_sales_dscnt: { cpn_id: @cpn_m_total_sales_dscnt.cpn_id, dscnt_rate: @cpn_m_total_sales_dscnt.dscnt_rate, dscnt_value: @cpn_m_total_sales_dscnt.dscnt_value, sales_range_min_value: @cpn_m_total_sales_dscnt.sales_range_min_value, sales_range_no: @cpn_m_total_sales_dscnt.sales_range_no }
    end

    assert_redirected_to cpn_m_total_sales_dscnt_path(assigns(:cpn_m_total_sales_dscnt))
  end

  test "should show cpn_m_total_sales_dscnt" do
    get :show, id: @cpn_m_total_sales_dscnt
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cpn_m_total_sales_dscnt
    assert_response :success
  end

  test "should update cpn_m_total_sales_dscnt" do
    patch :update, id: @cpn_m_total_sales_dscnt, cpn_m_total_sales_dscnt: { cpn_id: @cpn_m_total_sales_dscnt.cpn_id, dscnt_rate: @cpn_m_total_sales_dscnt.dscnt_rate, dscnt_value: @cpn_m_total_sales_dscnt.dscnt_value, sales_range_min_value: @cpn_m_total_sales_dscnt.sales_range_min_value, sales_range_no: @cpn_m_total_sales_dscnt.sales_range_no }
    assert_redirected_to cpn_m_total_sales_dscnt_path(assigns(:cpn_m_total_sales_dscnt))
  end

  test "should destroy cpn_m_total_sales_dscnt" do
    assert_difference('CpnMTotalSalesDscnt.count', -1) do
      delete :destroy, id: @cpn_m_total_sales_dscnt
    end

    assert_redirected_to cpn_m_total_sales_dscnts_path
  end
end
