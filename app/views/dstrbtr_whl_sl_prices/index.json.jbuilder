json.array!(@dstrbtr_whl_sl_prices) do |dstrbtr_whl_sl_price|
  json.extract! dstrbtr_whl_sl_price, :id, :accnt_cd, :sku, :whl_sl_price_ver, :whl_price_rate, :whl_sl_price, :pre_cp_whl_sl_prie_rate, :pre_cp_whl_sl_price, :cp_price_dscnt_rate, :cp_price_dscnt, :start_date, :end_date, :rgstr_dt, :rgstr_usr, :lst_upd_dt, :lst_upd_usr
  json.url dstrbtr_whl_sl_price_url(dstrbtr_whl_sl_price, format: :json)
end
