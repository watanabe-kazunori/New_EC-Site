require 'test_helper'

class DstrbtrMsControllerTest < ActionController::TestCase
  setup do
    @dstrbtr_m = dstrbtr_ms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dstrbtr_ms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dstrbtr_m" do
    assert_difference('DstrbtrM.count') do
      post :create, dstrbtr_m: { accnt_cd: @dstrbtr_m.accnt_cd, cntrct_end_date: @dstrbtr_m.cntrct_end_date, cntrct_next_renewal_date: @dstrbtr_m.cntrct_next_renewal_date, cntrct_renewal_date: @dstrbtr_m.cntrct_renewal_date, cntrct_start_date: @dstrbtr_m.cntrct_start_date, cntrct_start_date: @dstrbtr_m.cntrct_start_date, ptrn_cd: @dstrbtr_m.ptrn_cd, rgstr_date: @dstrbtr_m.rgstr_date }
    end

    assert_redirected_to dstrbtr_m_path(assigns(:dstrbtr_m))
  end

  test "should show dstrbtr_m" do
    get :show, id: @dstrbtr_m
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dstrbtr_m
    assert_response :success
  end

  test "should update dstrbtr_m" do
    patch :update, id: @dstrbtr_m, dstrbtr_m: { accnt_cd: @dstrbtr_m.accnt_cd, cntrct_end_date: @dstrbtr_m.cntrct_end_date, cntrct_next_renewal_date: @dstrbtr_m.cntrct_next_renewal_date, cntrct_renewal_date: @dstrbtr_m.cntrct_renewal_date, cntrct_start_date: @dstrbtr_m.cntrct_start_date, cntrct_start_date: @dstrbtr_m.cntrct_start_date, ptrn_cd: @dstrbtr_m.ptrn_cd, rgstr_date: @dstrbtr_m.rgstr_date }
    assert_redirected_to dstrbtr_m_path(assigns(:dstrbtr_m))
  end

  test "should destroy dstrbtr_m" do
    assert_difference('DstrbtrM.count', -1) do
      delete :destroy, id: @dstrbtr_m
    end

    assert_redirected_to dstrbtr_ms_path
  end
end
