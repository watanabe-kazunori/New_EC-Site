require 'test_helper'

class PrdHostAppMsControllerTest < ActionController::TestCase
  setup do
    @prd_host_app_m = prd_host_app_ms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:prd_host_app_ms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create prd_host_app_m" do
    assert_difference('PrdHostAppM.count') do
      post :create, prd_host_app_m: { APP_CD: @prd_host_app_m.APP_CD, APP_NAME: @prd_host_app_m.APP_NAME, APP_VER: @prd_host_app_m.APP_VER }
    end

    assert_redirected_to prd_host_app_m_path(assigns(:prd_host_app_m))
  end

  test "should show prd_host_app_m" do
    get :show, id: @prd_host_app_m
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @prd_host_app_m
    assert_response :success
  end

  test "should update prd_host_app_m" do
    patch :update, id: @prd_host_app_m, prd_host_app_m: { APP_CD: @prd_host_app_m.APP_CD, APP_NAME: @prd_host_app_m.APP_NAME, APP_VER: @prd_host_app_m.APP_VER }
    assert_redirected_to prd_host_app_m_path(assigns(:prd_host_app_m))
  end

  test "should destroy prd_host_app_m" do
    assert_difference('PrdHostAppM.count', -1) do
      delete :destroy, id: @prd_host_app_m
    end

    assert_redirected_to prd_host_app_ms_path
  end
end
