require 'test_helper'

class PrdMHostApPsControllerTest < ActionController::TestCase
  setup do
    @prd_m_host_app = prd_m_host_apps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:prd_m_host_apps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create prd_m_host_app" do
    assert_difference('PrdMHostApp.count') do
      post :create, prd_m_host_app: { APP_CD: @prd_m_host_app.APP_CD, SKU: @prd_m_host_app.SKU }
    end

    assert_redirected_to prd_m_host_app_path(assigns(:prd_m_host_app))
  end

  test "should show prd_m_host_app" do
    get :show, id: @prd_m_host_app
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @prd_m_host_app
    assert_response :success
  end

  test "should update prd_m_host_app" do
    patch :update, id: @prd_m_host_app, prd_m_host_app: { APP_CD: @prd_m_host_app.APP_CD, SKU: @prd_m_host_app.SKU }
    assert_redirected_to prd_m_host_app_path(assigns(:prd_m_host_app))
  end

  test "should destroy prd_m_host_app" do
    assert_difference('PrdMHostApp.count', -1) do
      delete :destroy, id: @prd_m_host_app
    end

    assert_redirected_to prd_m_host_apps_path
  end
end
