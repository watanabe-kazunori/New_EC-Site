require 'test_helper'

class CpnTypesControllerTest < ActionController::TestCase
  setup do
    @cpn_type = cpn_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cpn_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cpn_type" do
    assert_difference('CpnType.count') do
      post :create, cpn_type: { id: @cpn_type.id, name: @cpn_type.name }
    end

    assert_redirected_to cpn_type_path(assigns(:cpn_type))
  end

  test "should show cpn_type" do
    get :show, id: @cpn_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cpn_type
    assert_response :success
  end

  test "should update cpn_type" do
    patch :update, id: @cpn_type, cpn_type: { id: @cpn_type.id, name: @cpn_type.name }
    assert_redirected_to cpn_type_path(assigns(:cpn_type))
  end

  test "should destroy cpn_type" do
    assert_difference('CpnType.count', -1) do
      delete :destroy, id: @cpn_type
    end

    assert_redirected_to cpn_types_path
  end
end
