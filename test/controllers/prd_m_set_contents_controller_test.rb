require 'test_helper'

class PrdMSetContentsControllerTest < ActionController::TestCase
  setup do
    @prd_m_set_content = prd_m_set_contents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:prd_m_set_contents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create prd_m_set_content" do
    assert_difference('PrdMSetContent.count') do
      post :create, prd_m_set_content: { sku: @prd_m_set_content.sku, sku_content: @prd_m_set_content.sku_content }
    end

    assert_redirected_to prd_m_set_content_path(assigns(:prd_m_set_content))
  end

  test "should show prd_m_set_content" do
    get :show, id: @prd_m_set_content
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @prd_m_set_content
    assert_response :success
  end

  test "should update prd_m_set_content" do
    patch :update, id: @prd_m_set_content, prd_m_set_content: { sku: @prd_m_set_content.sku, sku_content: @prd_m_set_content.sku_content }
    assert_redirected_to prd_m_set_content_path(assigns(:prd_m_set_content))
  end

  test "should destroy prd_m_set_content" do
    assert_difference('PrdMSetContent.count', -1) do
      delete :destroy, id: @prd_m_set_content
    end

    assert_redirected_to prd_m_set_contents_path
  end
end
