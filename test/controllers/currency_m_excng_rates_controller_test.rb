require 'test_helper'

class CurrencyMExcngRatesControllerTest < ActionController::TestCase
  setup do
    @currency_m_excng_rate = currency_m_excng_rates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:currency_m_excng_rates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create currency_m_excng_rate" do
    assert_difference('CurrencyMExcngRate.count') do
      post :create, currency_m_excng_rate: { currency_cd: @currency_m_excng_rate.currency_cd, end_date: @currency_m_excng_rate.end_date, exchng_rate: @currency_m_excng_rate.exchng_rate, exchng_rate_ver: @currency_m_excng_rate.exchng_rate_ver, lst_upd_dt: @currency_m_excng_rate.lst_upd_dt, lst_upd_usr: @currency_m_excng_rate.lst_upd_usr, rgstr_dt: @currency_m_excng_rate.rgstr_dt, rgstr_usr: @currency_m_excng_rate.rgstr_usr, start_date: @currency_m_excng_rate.start_date }
    end

    assert_redirected_to currency_m_excng_rate_path(assigns(:currency_m_excng_rate))
  end

  test "should show currency_m_excng_rate" do
    get :show, id: @currency_m_excng_rate
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @currency_m_excng_rate
    assert_response :success
  end

  test "should update currency_m_excng_rate" do
    patch :update, id: @currency_m_excng_rate, currency_m_excng_rate: { currency_cd: @currency_m_excng_rate.currency_cd, end_date: @currency_m_excng_rate.end_date, exchng_rate: @currency_m_excng_rate.exchng_rate, exchng_rate_ver: @currency_m_excng_rate.exchng_rate_ver, lst_upd_dt: @currency_m_excng_rate.lst_upd_dt, lst_upd_usr: @currency_m_excng_rate.lst_upd_usr, rgstr_dt: @currency_m_excng_rate.rgstr_dt, rgstr_usr: @currency_m_excng_rate.rgstr_usr, start_date: @currency_m_excng_rate.start_date }
    assert_redirected_to currency_m_excng_rate_path(assigns(:currency_m_excng_rate))
  end

  test "should destroy currency_m_excng_rate" do
    assert_difference('CurrencyMExcngRate.count', -1) do
      delete :destroy, id: @currency_m_excng_rate
    end

    assert_redirected_to currency_m_excng_rates_path
  end
end
