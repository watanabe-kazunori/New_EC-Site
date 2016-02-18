require 'test_helper'

class PrdMEffectCsLsControllerTest < ActionController::TestCase
  setup do
    @prd_m_effect_csl = prd_m_effect_csls(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:prd_m_effect_csls)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create prd_m_effect_csl" do
    assert_difference('PrdMEffectCsl.count') do
      post :create, prd_m_effect_csl: { PRD_EFFECT_CLS_CD: @prd_m_effect_csl.PRD_EFFECT_CLS_CD, SKU: @prd_m_effect_csl.SKU }
    end

    assert_redirected_to prd_m_effect_csl_path(assigns(:prd_m_effect_csl))
  end

  test "should show prd_m_effect_csl" do
    get :show, id: @prd_m_effect_csl
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @prd_m_effect_csl
    assert_response :success
  end

  test "should update prd_m_effect_csl" do
    patch :update, id: @prd_m_effect_csl, prd_m_effect_csl: { PRD_EFFECT_CLS_CD: @prd_m_effect_csl.PRD_EFFECT_CLS_CD, SKU: @prd_m_effect_csl.SKU }
    assert_redirected_to prd_m_effect_csl_path(assigns(:prd_m_effect_csl))
  end

  test "should destroy prd_m_effect_csl" do
    assert_difference('PrdMEffectCsl.count', -1) do
      delete :destroy, id: @prd_m_effect_csl
    end

    assert_redirected_to prd_m_effect_csls_path
  end
end
