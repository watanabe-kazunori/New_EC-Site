json.array!(@cpn_m_sales_dsts) do |cpn_m_sales_dst|
  json.extract! cpn_m_sales_dst, :id, :cpn_id, :accnt_cd
  json.url cpn_m_sales_dst_url(cpn_m_sales_dst, format: :json)
end
