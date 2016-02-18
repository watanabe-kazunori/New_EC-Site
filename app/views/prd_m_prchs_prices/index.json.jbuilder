json.array!(@prd_m_prchs_prices) do |prd_m_prchs_price|
  json.extract! prd_m_prchs_price, :id, :sku, :prchs_price_ver, :list_price, :prchs_price_rate, :prchs_price, :start_date, :end_date, :currency_cd, :rgstr_dt, :rgstr_usr, :lst_upd_dt, :lst_upda_usr
  json.url prd_m_prchs_price_url(prd_m_prchs_price, format: :json)
end
