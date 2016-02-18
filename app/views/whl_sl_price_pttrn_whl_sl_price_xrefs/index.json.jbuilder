json.array!(@whl_sl_price_pttrn_whl_sl_price_xrefs) do |whl_sl_price_pttrn_whl_sl_price_xref|
  json.extract! whl_sl_price_pttrn_whl_sl_price_xref, :id, :ptrn_cd, :sku, :whl_sl_price_type, :whl_sl_price_ver, :string
  json.url whl_sl_price_pttrn_whl_sl_price_xref_url(whl_sl_price_pttrn_whl_sl_price_xref, format: :json)
end
