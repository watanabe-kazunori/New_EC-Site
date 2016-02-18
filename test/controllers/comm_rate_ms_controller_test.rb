require 'test_helper'

class CommRateMsControllerTest < ActionController::TestCase
  setup do
    @comm_rate_m = comm_rate_ms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:comm_rate_ms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create comm_rate_m" do
    assert_difference('CommRateM.count') do
      post :create, comm_rate_m: { comm_rate: @comm_rate_m.comm_rate, comm_rate_ver: @comm_rate_m.comm_rate_ver, end_date: @comm_rate_m.end_date, start_date: @comm_rate_m.start_date }
    end

    assert_redirected_to comm_rate_m_path(assigns(:comm_rate_m))
  end

  test "should show comm_rate_m" do
    get :show, id: @comm_rate_m
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @comm_rate_m
    assert_response :success
  end

  test "should update comm_rate_m" do
    patch :update, id: @comm_rate_m, comm_rate_m: { comm_rate: @comm_rate_m.comm_rate, comm_rate_ver: @comm_rate_m.comm_rate_ver, end_date: @comm_rate_m.end_date, start_date: @comm_rate_m.start_date }
    assert_redirected_to comm_rate_m_path(assigns(:comm_rate_m))
  end

  test "should destroy comm_rate_m" do
    assert_difference('CommRateM.count', -1) do
      delete :destroy, id: @comm_rate_m
    end

    assert_redirected_to comm_rate_ms_path
  end
end
