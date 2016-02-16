require 'test_helper'

class WhlSlPricePttrnDsControllerTest < ActionController::TestCase
  setup do
    @whl_sl_price_pttrn_d = whl_sl_price_pttrn_ds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:whl_sl_price_pttrn_ds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create whl_sl_price_pttrn_d" do
    assert_difference('WhlSlPricePttrnD.count') do
      post :create, whl_sl_price_pttrn_d: { ptrn_cd: @whl_sl_price_pttrn_d.ptrn_cd, sku: @whl_sl_price_pttrn_d.sku, whl_sl_price_type: @whl_sl_price_pttrn_d.whl_sl_price_type }
    end

    assert_redirected_to whl_sl_price_pttrn_d_path(assigns(:whl_sl_price_pttrn_d))
  end

  test "should show whl_sl_price_pttrn_d" do
    get :show, id: @whl_sl_price_pttrn_d
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @whl_sl_price_pttrn_d
    assert_response :success
  end

  test "should update whl_sl_price_pttrn_d" do
    patch :update, id: @whl_sl_price_pttrn_d, whl_sl_price_pttrn_d: { ptrn_cd: @whl_sl_price_pttrn_d.ptrn_cd, sku: @whl_sl_price_pttrn_d.sku, whl_sl_price_type: @whl_sl_price_pttrn_d.whl_sl_price_type }
    assert_redirected_to whl_sl_price_pttrn_d_path(assigns(:whl_sl_price_pttrn_d))
  end

  test "should destroy whl_sl_price_pttrn_d" do
    assert_difference('WhlSlPricePttrnD.count', -1) do
      delete :destroy, id: @whl_sl_price_pttrn_d
    end

    assert_redirected_to whl_sl_price_pttrn_ds_path
  end
end
