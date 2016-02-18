json.array!(@whl_sl_price_pttrn_ms) do |whl_sl_price_pttrn_m|
  json.extract! whl_sl_price_pttrn_m, :id, :ptrn_cd, :pttrn_name, :pttrn_desc
  json.url whl_sl_price_pttrn_m_url(whl_sl_price_pttrn_m, format: :json)
end
