require 'test_helper'

class PrdMsControllerTest < ActionController::TestCase
  setup do
    @prd_m = prd_ms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:prd_ms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create prd_m" do
    assert_difference('PrdM.count') do
      post :create, prd_m: { ACCNT_CD_DVLPR: @prd_m.ACCNT_CD_DVLPR, ACCNT_CD_VNDR: @prd_m.ACCNT_CD_VNDR, ACDMC_LIC_F: @prd_m.ACDMC_LIC_F, DB_PRD_DLVRY_MTHD: @prd_m.DB_PRD_DLVRY_MTHD, DLVRY_LD_TIME: @prd_m.DLVRY_LD_TIME, DSTRBTR_DISP_F: @prd_m.DSTRBTR_DISP_F, LIC_FROM: @prd_m.LIC_FROM, LIC_TO: @prd_m.LIC_TO, LIC_TYPE: @prd_m.LIC_TYPE, LST_UPD_DT: @prd_m.LST_UPD_DT, LST_UPD_USR: @prd_m.LST_UPD_USR, MEMO: @prd_m.MEMO, MNT_LIC_TERM: @prd_m.MNT_LIC_TERM, MNT_LIC_TERM_UNIT: @prd_m.MNT_LIC_TERM_UNIT, PRD_CTGRY_CD: @prd_m.PRD_CTGRY_CD, PRD_DESC: @prd_m.PRD_DESC, PRD_DLVRY_MTHD: @prd_m.PRD_DLVRY_MTHD, PRD_DVLPR_ORG_NAME: @prd_m.PRD_DVLPR_ORG_NAME, PRD_NAME: @prd_m.PRD_NAME, PRD_NAME: @prd_m.PRD_NAME, PRD_NAME_SUBTITLE: @prd_m.PRD_NAME_SUBTITLE, PRD_NOTE: @prd_m.PRD_NOTE, PRD_NOTICE: @prd_m.PRD_NOTICE, PRD_OTHER_INFO: @prd_m.PRD_OTHER_INFO, PRD_ST: @prd_m.PRD_ST, PRD_TYPE: @prd_m.PRD_TYPE, RCVNG_PLCNT_PRD_F: @prd_m.RCVNG_PLCNT_PRD_F, RGSTR_DT: @prd_m.RGSTR_DT, RGSTR_USR: @prd_m.RGSTR_USR, SALE_F: @prd_m.SALE_F, SET_PRD_F: @prd_m.SET_PRD_F, SET_PRD_TYPE: @prd_m.SET_PRD_TYPE, SKU: @prd_m.SKU, SKU_DVLPR: @prd_m.SKU_DVLPR, SKU_SOURCE_PRD: @prd_m.SKU_SOURCE_PRD, SP_PRD_TYPE: @prd_m.SP_PRD_TYPE, SUBSCRIPTION_LIC_TERM: @prd_m.SUBSCRIPTION_LIC_TERM, SUBSCRIPTION_LIC_TERM_UNIT: @prd_m.SUBSCRIPTION_LIC_TERM_UNIT, URL_DL: @prd_m.URL_DL, URL_INSTALLER: @prd_m.URL_INSTALLER, URL_INSTALL_GUID: @prd_m.URL_INSTALL_GUID, URL_LIC_AUTH_GUID: @prd_m.URL_LIC_AUTH_GUID, URL_PRD: @prd_m.URL_PRD, URL_PRD_IMAGE: @prd_m.URL_PRD_IMAGE }
    end

    assert_redirected_to prd_m_path(assigns(:prd_m))
  end

  test "should show prd_m" do
    get :show, id: @prd_m
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @prd_m
    assert_response :success
  end

  test "should update prd_m" do
    patch :update, id: @prd_m, prd_m: { ACCNT_CD_DVLPR: @prd_m.ACCNT_CD_DVLPR, ACCNT_CD_VNDR: @prd_m.ACCNT_CD_VNDR, ACDMC_LIC_F: @prd_m.ACDMC_LIC_F, DB_PRD_DLVRY_MTHD: @prd_m.DB_PRD_DLVRY_MTHD, DLVRY_LD_TIME: @prd_m.DLVRY_LD_TIME, DSTRBTR_DISP_F: @prd_m.DSTRBTR_DISP_F, LIC_FROM: @prd_m.LIC_FROM, LIC_TO: @prd_m.LIC_TO, LIC_TYPE: @prd_m.LIC_TYPE, LST_UPD_DT: @prd_m.LST_UPD_DT, LST_UPD_USR: @prd_m.LST_UPD_USR, MEMO: @prd_m.MEMO, MNT_LIC_TERM: @prd_m.MNT_LIC_TERM, MNT_LIC_TERM_UNIT: @prd_m.MNT_LIC_TERM_UNIT, PRD_CTGRY_CD: @prd_m.PRD_CTGRY_CD, PRD_DESC: @prd_m.PRD_DESC, PRD_DLVRY_MTHD: @prd_m.PRD_DLVRY_MTHD, PRD_DVLPR_ORG_NAME: @prd_m.PRD_DVLPR_ORG_NAME, PRD_NAME: @prd_m.PRD_NAME, PRD_NAME: @prd_m.PRD_NAME, PRD_NAME_SUBTITLE: @prd_m.PRD_NAME_SUBTITLE, PRD_NOTE: @prd_m.PRD_NOTE, PRD_NOTICE: @prd_m.PRD_NOTICE, PRD_OTHER_INFO: @prd_m.PRD_OTHER_INFO, PRD_ST: @prd_m.PRD_ST, PRD_TYPE: @prd_m.PRD_TYPE, RCVNG_PLCNT_PRD_F: @prd_m.RCVNG_PLCNT_PRD_F, RGSTR_DT: @prd_m.RGSTR_DT, RGSTR_USR: @prd_m.RGSTR_USR, SALE_F: @prd_m.SALE_F, SET_PRD_F: @prd_m.SET_PRD_F, SET_PRD_TYPE: @prd_m.SET_PRD_TYPE, SKU: @prd_m.SKU, SKU_DVLPR: @prd_m.SKU_DVLPR, SKU_SOURCE_PRD: @prd_m.SKU_SOURCE_PRD, SP_PRD_TYPE: @prd_m.SP_PRD_TYPE, SUBSCRIPTION_LIC_TERM: @prd_m.SUBSCRIPTION_LIC_TERM, SUBSCRIPTION_LIC_TERM_UNIT: @prd_m.SUBSCRIPTION_LIC_TERM_UNIT, URL_DL: @prd_m.URL_DL, URL_INSTALLER: @prd_m.URL_INSTALLER, URL_INSTALL_GUID: @prd_m.URL_INSTALL_GUID, URL_LIC_AUTH_GUID: @prd_m.URL_LIC_AUTH_GUID, URL_PRD: @prd_m.URL_PRD, URL_PRD_IMAGE: @prd_m.URL_PRD_IMAGE }
    assert_redirected_to prd_m_path(assigns(:prd_m))
  end

  test "should destroy prd_m" do
    assert_difference('PrdM.count', -1) do
      delete :destroy, id: @prd_m
    end

    assert_redirected_to prd_ms_path
  end
end
