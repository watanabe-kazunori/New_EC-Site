require 'test_helper'

class TaxMsControllerTest < ActionController::TestCase
  setup do
    @tax_m = tax_ms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tax_ms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tax_m" do
    assert_difference('TaxM.count') do
      post :create, tax_m: { end_date: @tax_m.end_date, start_date: @tax_m.start_date, tax_rate: @tax_m.tax_rate, tax_ver: @tax_m.tax_ver }
    end

    assert_redirected_to tax_m_path(assigns(:tax_m))
  end

  test "should show tax_m" do
    get :show, id: @tax_m
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tax_m
    assert_response :success
  end

  test "should update tax_m" do
    patch :update, id: @tax_m, tax_m: { end_date: @tax_m.end_date, start_date: @tax_m.start_date, tax_rate: @tax_m.tax_rate, tax_ver: @tax_m.tax_ver }
    assert_redirected_to tax_m_path(assigns(:tax_m))
  end

  test "should destroy tax_m" do
    assert_difference('TaxM.count', -1) do
      delete :destroy, id: @tax_m
    end

    assert_redirected_to tax_ms_path
  end
end
