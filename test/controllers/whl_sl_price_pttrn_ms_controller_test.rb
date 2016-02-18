require 'test_helper'

class WhlSlPricePttrnMsControllerTest < ActionController::TestCase
  setup do
    @whl_sl_price_pttrn_m = whl_sl_price_pttrn_ms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:whl_sl_price_pttrn_ms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create whl_sl_price_pttrn_m" do
    assert_difference('WhlSlPricePttrnM.count') do
      post :create, whl_sl_price_pttrn_m: { ptrn_cd: @whl_sl_price_pttrn_m.ptrn_cd, pttrn_desc: @whl_sl_price_pttrn_m.pttrn_desc, pttrn_name: @whl_sl_price_pttrn_m.pttrn_name }
    end

    assert_redirected_to whl_sl_price_pttrn_m_path(assigns(:whl_sl_price_pttrn_m))
  end

  test "should show whl_sl_price_pttrn_m" do
    get :show, id: @whl_sl_price_pttrn_m
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @whl_sl_price_pttrn_m
    assert_response :success
  end

  test "should update whl_sl_price_pttrn_m" do
    patch :update, id: @whl_sl_price_pttrn_m, whl_sl_price_pttrn_m: { ptrn_cd: @whl_sl_price_pttrn_m.ptrn_cd, pttrn_desc: @whl_sl_price_pttrn_m.pttrn_desc, pttrn_name: @whl_sl_price_pttrn_m.pttrn_name }
    assert_redirected_to whl_sl_price_pttrn_m_path(assigns(:whl_sl_price_pttrn_m))
  end

  test "should destroy whl_sl_price_pttrn_m" do
    assert_difference('WhlSlPricePttrnM.count', -1) do
      delete :destroy, id: @whl_sl_price_pttrn_m
    end

    assert_redirected_to whl_sl_price_pttrn_ms_path
  end
end
