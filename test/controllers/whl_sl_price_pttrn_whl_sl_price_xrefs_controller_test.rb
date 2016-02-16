require 'test_helper'

class WhlSlPricePttrnWhlSlPriceXrefsControllerTest < ActionController::TestCase
  setup do
    @whl_sl_price_pttrn_whl_sl_price_xref = whl_sl_price_pttrn_whl_sl_price_xrefs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:whl_sl_price_pttrn_whl_sl_price_xrefs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create whl_sl_price_pttrn_whl_sl_price_xref" do
    assert_difference('WhlSlPricePttrnWhlSlPriceXref.count') do
      post :create, whl_sl_price_pttrn_whl_sl_price_xref: { ptrn_cd: @whl_sl_price_pttrn_whl_sl_price_xref.ptrn_cd, sku: @whl_sl_price_pttrn_whl_sl_price_xref.sku, string: @whl_sl_price_pttrn_whl_sl_price_xref.string, whl_sl_price_type: @whl_sl_price_pttrn_whl_sl_price_xref.whl_sl_price_type, whl_sl_price_ver: @whl_sl_price_pttrn_whl_sl_price_xref.whl_sl_price_ver }
    end

    assert_redirected_to whl_sl_price_pttrn_whl_sl_price_xref_path(assigns(:whl_sl_price_pttrn_whl_sl_price_xref))
  end

  test "should show whl_sl_price_pttrn_whl_sl_price_xref" do
    get :show, id: @whl_sl_price_pttrn_whl_sl_price_xref
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @whl_sl_price_pttrn_whl_sl_price_xref
    assert_response :success
  end

  test "should update whl_sl_price_pttrn_whl_sl_price_xref" do
    patch :update, id: @whl_sl_price_pttrn_whl_sl_price_xref, whl_sl_price_pttrn_whl_sl_price_xref: { ptrn_cd: @whl_sl_price_pttrn_whl_sl_price_xref.ptrn_cd, sku: @whl_sl_price_pttrn_whl_sl_price_xref.sku, string: @whl_sl_price_pttrn_whl_sl_price_xref.string, whl_sl_price_type: @whl_sl_price_pttrn_whl_sl_price_xref.whl_sl_price_type, whl_sl_price_ver: @whl_sl_price_pttrn_whl_sl_price_xref.whl_sl_price_ver }
    assert_redirected_to whl_sl_price_pttrn_whl_sl_price_xref_path(assigns(:whl_sl_price_pttrn_whl_sl_price_xref))
  end

  test "should destroy whl_sl_price_pttrn_whl_sl_price_xref" do
    assert_difference('WhlSlPricePttrnWhlSlPriceXref.count', -1) do
      delete :destroy, id: @whl_sl_price_pttrn_whl_sl_price_xref
    end

    assert_redirected_to whl_sl_price_pttrn_whl_sl_price_xrefs_path
  end
end
