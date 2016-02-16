require 'test_helper'

class PrdCtgryMsControllerTest < ActionController::TestCase
  setup do
    @prd_ctgry_m = prd_ctgry_ms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:prd_ctgry_ms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create prd_ctgry_m" do
    assert_difference('PrdCtgryM.count') do
      post :create, prd_ctgry_m: { PRD_CTGRY_CD: @prd_ctgry_m.PRD_CTGRY_CD, PRD_CTGRY_NAME: @prd_ctgry_m.PRD_CTGRY_NAME }
    end

    assert_redirected_to prd_ctgry_m_path(assigns(:prd_ctgry_m))
  end

  test "should show prd_ctgry_m" do
    get :show, id: @prd_ctgry_m
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @prd_ctgry_m
    assert_response :success
  end

  test "should update prd_ctgry_m" do
    patch :update, id: @prd_ctgry_m, prd_ctgry_m: { PRD_CTGRY_CD: @prd_ctgry_m.PRD_CTGRY_CD, PRD_CTGRY_NAME: @prd_ctgry_m.PRD_CTGRY_NAME }
    assert_redirected_to prd_ctgry_m_path(assigns(:prd_ctgry_m))
  end

  test "should destroy prd_ctgry_m" do
    assert_difference('PrdCtgryM.count', -1) do
      delete :destroy, id: @prd_ctgry_m
    end

    assert_redirected_to prd_ctgry_ms_path
  end
end
