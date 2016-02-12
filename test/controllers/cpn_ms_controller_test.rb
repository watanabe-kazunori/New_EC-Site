require 'test_helper'

class CpnMsControllerTest < ActionController::TestCase
  setup do
    @cpn_m = cpn_ms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cpn_ms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cpn_m" do
    assert_difference('CpnM.count') do
      post :create, cpn_m: { CPN_CD: @cpn_m.CPN_CD, CPN_CLS: @cpn_m.CPN_CLS, CPN_DISCNT_TYPE: @cpn_m.CPN_DISCNT_TYPE, CPN_ID: @cpn_m.CPN_ID, CPN_ST: @cpn_m.CPN_ST, CPN_TITLE: @cpn_m.CPN_TITLE, DSCNT_RATE: @cpn_m.DSCNT_RATE, DSCNT_VALUE: @cpn_m.DSCNT_VALUE, EXCLD_PRD_CNDTN: @cpn_m.EXCLD_PRD_CNDTN, EXPIRATION_DT: @cpn_m.EXPIRATION_DT, START_DT: @cpn_m.START_DT, TRGT_PRD_CNDTN: @cpn_m.TRGT_PRD_CNDTN, USE_LIMIT: @cpn_m.USE_LIMIT, VNDR_CPN: @cpn_m.VNDR_CPN }
    end

    assert_redirected_to cpn_m_path(assigns(:cpn_m))
  end

  test "should show cpn_m" do
    get :show, id: @cpn_m
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cpn_m
    assert_response :success
  end

  test "should update cpn_m" do
    patch :update, id: @cpn_m, cpn_m: { CPN_CD: @cpn_m.CPN_CD, CPN_CLS: @cpn_m.CPN_CLS, CPN_DISCNT_TYPE: @cpn_m.CPN_DISCNT_TYPE, CPN_ID: @cpn_m.CPN_ID, CPN_ST: @cpn_m.CPN_ST, CPN_TITLE: @cpn_m.CPN_TITLE, DSCNT_RATE: @cpn_m.DSCNT_RATE, DSCNT_VALUE: @cpn_m.DSCNT_VALUE, EXCLD_PRD_CNDTN: @cpn_m.EXCLD_PRD_CNDTN, EXPIRATION_DT: @cpn_m.EXPIRATION_DT, START_DT: @cpn_m.START_DT, TRGT_PRD_CNDTN: @cpn_m.TRGT_PRD_CNDTN, USE_LIMIT: @cpn_m.USE_LIMIT, VNDR_CPN: @cpn_m.VNDR_CPN }
    assert_redirected_to cpn_m_path(assigns(:cpn_m))
  end

  test "should destroy cpn_m" do
    assert_difference('CpnM.count', -1) do
      delete :destroy, id: @cpn_m
    end

    assert_redirected_to cpn_ms_path
  end
end
