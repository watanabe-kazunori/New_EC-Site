json.array!(@prd_m_whl_sl_prices) do |prd_m_whl_sl_price|
  json.extract! prd_m_whl_sl_price, :id, :SKU, :WHL_SL_PRICE_TYPE, :WHL_SL_PRICE_VER, :WHL_SL_PRICE_RATE, :WHL_SL_PRICE, :PRE_CP_WHL_SL_PRIE_RATE, :PRE_CP_WHL_SL_PRICE, :CP_PRICE_DSCNT_RATE, :CP_PRICE_DSCNT, :START_DATE, :END_DATE, :RGSTR_DT, :RGSTR_USR, :LST_UPD_DT, :LST_UPD_USR
  json.url prd_m_whl_sl_price_url(prd_m_whl_sl_price, format: :json)
end
