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
      post :create, cpn_m: { con_discnt_type: @cpn_m.con_discnt_type, cpn_cd: @cpn_m.cpn_cd, cpn_cls: @cpn_m.cpn_cls, cpn_id: @cpn_m.cpn_id, cpn_st: @cpn_m.cpn_st, cpn_title: @cpn_m.cpn_title, dscnt_rate: @cpn_m.dscnt_rate, dscnt_value: @cpn_m.dscnt_value, excld_prd_cndtn: @cpn_m.excld_prd_cndtn, expiration_dt: @cpn_m.expiration_dt, memo: @cpn_m.memo, start_dt: @cpn_m.start_dt, trgt_prd_cndtn: @cpn_m.trgt_prd_cndtn, use_limit: @cpn_m.use_limit, vndr_cpn: @cpn_m.vndr_cpn }
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
    patch :update, id: @cpn_m, cpn_m: { con_discnt_type: @cpn_m.con_discnt_type, cpn_cd: @cpn_m.cpn_cd, cpn_cls: @cpn_m.cpn_cls, cpn_id: @cpn_m.cpn_id, cpn_st: @cpn_m.cpn_st, cpn_title: @cpn_m.cpn_title, dscnt_rate: @cpn_m.dscnt_rate, dscnt_value: @cpn_m.dscnt_value, excld_prd_cndtn: @cpn_m.excld_prd_cndtn, expiration_dt: @cpn_m.expiration_dt, memo: @cpn_m.memo, start_dt: @cpn_m.start_dt, trgt_prd_cndtn: @cpn_m.trgt_prd_cndtn, use_limit: @cpn_m.use_limit, vndr_cpn: @cpn_m.vndr_cpn }
    assert_redirected_to cpn_m_path(assigns(:cpn_m))
  end

  test "should destroy cpn_m" do
    assert_difference('CpnM.count', -1) do
      delete :destroy, id: @cpn_m
    end

    assert_redirected_to cpn_ms_path
  end
end
