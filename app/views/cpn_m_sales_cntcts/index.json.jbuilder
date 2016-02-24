json.array!(@cpn_m_sales_cntcts) do |cpn_m_sales_cntct|
  json.extract! cpn_m_sales_cntct, :id, :cpn_id, :accnt_cd_sales_cntct
  json.url cpn_m_sales_cntct_url(cpn_m_sales_cntct, format: :json)
end
