json.array!(@whl_sl_price_pttrn_ds) do |whl_sl_price_pttrn_d|
  json.extract! whl_sl_price_pttrn_d, :id, :ptrn_cd, :sku, :whl_sl_price_type
  json.url whl_sl_price_pttrn_d_url(whl_sl_price_pttrn_d, format: :json)
end
