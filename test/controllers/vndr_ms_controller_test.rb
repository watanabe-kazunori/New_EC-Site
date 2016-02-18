require 'test_helper'

class VndrMsControllerTest < ActionController::TestCase
  setup do
    @vndr_m = vndr_ms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vndr_ms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vndr_m" do
    assert_difference('VndrM.count') do
      post :create, vndr_m: { ACCNT_CD: @vndr_m.ACCNT_CD, CNTRCT_EXP_DATE: @vndr_m.CNTRCT_EXP_DATE, CNTRCT_LST_UPD_DATE: @vndr_m.CNTRCT_LST_UPD_DATE, CNTRCT_START_DTE: @vndr_m.CNTRCT_START_DTE, MONTHLY_REPORT_TYPE: @vndr_m.MONTHLY_REPORT_TYPE, PAY_METHOD: @vndr_m.PAY_METHOD, SALES_REPORT_METHOD: @vndr_m.SALES_REPORT_METHOD }
    end

    assert_redirected_to vndr_m_path(assigns(:vndr_m))
  end

  test "should show vndr_m" do
    get :show, id: @vndr_m
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vndr_m
    assert_response :success
  end

  test "should update vndr_m" do
    patch :update, id: @vndr_m, vndr_m: { ACCNT_CD: @vndr_m.ACCNT_CD, CNTRCT_EXP_DATE: @vndr_m.CNTRCT_EXP_DATE, CNTRCT_LST_UPD_DATE: @vndr_m.CNTRCT_LST_UPD_DATE, CNTRCT_START_DTE: @vndr_m.CNTRCT_START_DTE, MONTHLY_REPORT_TYPE: @vndr_m.MONTHLY_REPORT_TYPE, PAY_METHOD: @vndr_m.PAY_METHOD, SALES_REPORT_METHOD: @vndr_m.SALES_REPORT_METHOD }
    assert_redirected_to vndr_m_path(assigns(:vndr_m))
  end

  test "should destroy vndr_m" do
    assert_difference('VndrM.count', -1) do
      delete :destroy, id: @vndr_m
    end

    assert_redirected_to vndr_ms_path
  end
end
