require 'test_helper'

class CurrencyMsControllerTest < ActionController::TestCase
  setup do
    @currency_m = currency_ms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:currency_ms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create currency_m" do
    assert_difference('CurrencyM.count') do
      post :create, currency_m: { currency_cd: @currency_m.currency_cd, currency_name: @currency_m.currency_name, currency_name_e: @currency_m.currency_name_e, currency_sign: @currency_m.currency_sign, currency_unit: @currency_m.currency_unit, currency_unit_e: @currency_m.currency_unit_e }
    end

    assert_redirected_to currency_m_path(assigns(:currency_m))
  end

  test "should show currency_m" do
    get :show, id: @currency_m
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @currency_m
    assert_response :success
  end

  test "should update currency_m" do
    patch :update, id: @currency_m, currency_m: { currency_cd: @currency_m.currency_cd, currency_name: @currency_m.currency_name, currency_name_e: @currency_m.currency_name_e, currency_sign: @currency_m.currency_sign, currency_unit: @currency_m.currency_unit, currency_unit_e: @currency_m.currency_unit_e }
    assert_redirected_to currency_m_path(assigns(:currency_m))
  end

  test "should destroy currency_m" do
    assert_difference('CurrencyM.count', -1) do
      delete :destroy, id: @currency_m
    end

    assert_redirected_to currency_ms_path
  end
end
