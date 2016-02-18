json.array!(@fbj_prd_sell_price_ms) do |fbj_prd_sell_price_m|
  json.extract! fbj_prd_sell_price_m, :id, :sku, :sell_price_ver, :tax_ex_price, :tax_in_price, :pre_cp_sell_price, :cp_dscnt_rate, :applctn_start_dt, :applctn_end_dt, :currency_cd, :exchng_rate_ver, :comm_rate_ver, :tax_ver, :rgstr_dtrgstr_dt, :rgstr_usr, :lst_updt_dt, :lst_updt_usr
  json.url fbj_prd_sell_price_m_url(fbj_prd_sell_price_m, format: :json)
end
