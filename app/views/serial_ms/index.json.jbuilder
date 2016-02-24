json.array!(@serial_ms) do |serial_m|
  json.extract! serial_m, :id, :serial_id, :sku, :serial_type, :cnsgnmnt_serial_st, :cnsgnmnt_serial_store_date, :po_no, :os_type, :serial_no_1, :serial_no_2, :serial_no_3, :web_up_serial, :dl_file_name, :dl_pass_cd, :nfr_f, :nfr_rsn, :accnt_cd_cstmr, :so_no, :so_item_no, :sku_serial_assngd, :use_type, :upgrd_serial_f, :upgrd_pre_prd_serial_no, :accnt_cd_sales_cntnt, :dlvry_no, :rgstr_dt, :rgstr_usr, :lst_upd_dt, :lst_upd_usr
  json.url serial_m_url(serial_m, format: :json)
end
