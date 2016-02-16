require 'test_helper'

class PrdEffectClsMsControllerTest < ActionController::TestCase
  setup do
    @prd_effect_cls_m = prd_effect_cls_ms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:prd_effect_cls_ms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create prd_effect_cls_m" do
    assert_difference('PrdEffectClsM.count') do
      post :create, prd_effect_cls_m: { PRD_EFFECT_CLS_CD: @prd_effect_cls_m.PRD_EFFECT_CLS_CD, PRD_EFFECT_CLS_NAME: @prd_effect_cls_m.PRD_EFFECT_CLS_NAME }
    end

    assert_redirected_to prd_effect_cls_m_path(assigns(:prd_effect_cls_m))
  end

  test "should show prd_effect_cls_m" do
    get :show, id: @prd_effect_cls_m
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @prd_effect_cls_m
    assert_response :success
  end

  test "should update prd_effect_cls_m" do
    patch :update, id: @prd_effect_cls_m, prd_effect_cls_m: { PRD_EFFECT_CLS_CD: @prd_effect_cls_m.PRD_EFFECT_CLS_CD, PRD_EFFECT_CLS_NAME: @prd_effect_cls_m.PRD_EFFECT_CLS_NAME }
    assert_redirected_to prd_effect_cls_m_path(assigns(:prd_effect_cls_m))
  end

  test "should destroy prd_effect_cls_m" do
    assert_difference('PrdEffectClsM.count', -1) do
      delete :destroy, id: @prd_effect_cls_m
    end

    assert_redirected_to prd_effect_cls_ms_path
  end
end
