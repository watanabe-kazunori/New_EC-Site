require 'test_helper'

class PrdMDstrbtrHidePrdsControllerTest < ActionController::TestCase
  setup do
    @prd_m_dstrbtr_hide_prd = prd_m_dstrbtr_hide_prds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:prd_m_dstrbtr_hide_prds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create prd_m_dstrbtr_hide_prd" do
    assert_difference('PrdMDstrbtrHidePrd.count') do
      post :create, prd_m_dstrbtr_hide_prd: { accnt_cd: @prd_m_dstrbtr_hide_prd.accnt_cd, sku: @prd_m_dstrbtr_hide_prd.sku }
    end

    assert_redirected_to prd_m_dstrbtr_hide_prd_path(assigns(:prd_m_dstrbtr_hide_prd))
  end

  test "should show prd_m_dstrbtr_hide_prd" do
    get :show, id: @prd_m_dstrbtr_hide_prd
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @prd_m_dstrbtr_hide_prd
    assert_response :success
  end

  test "should update prd_m_dstrbtr_hide_prd" do
    patch :update, id: @prd_m_dstrbtr_hide_prd, prd_m_dstrbtr_hide_prd: { accnt_cd: @prd_m_dstrbtr_hide_prd.accnt_cd, sku: @prd_m_dstrbtr_hide_prd.sku }
    assert_redirected_to prd_m_dstrbtr_hide_prd_path(assigns(:prd_m_dstrbtr_hide_prd))
  end

  test "should destroy prd_m_dstrbtr_hide_prd" do
    assert_difference('PrdMDstrbtrHidePrd.count', -1) do
      delete :destroy, id: @prd_m_dstrbtr_hide_prd
    end

    assert_redirected_to prd_m_dstrbtr_hide_prds_path
  end
end
