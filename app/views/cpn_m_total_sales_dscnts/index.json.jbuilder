json.array!(@cpn_m_total_sales_dscnts) do |cpn_m_total_sales_dscnt|
  json.extract! cpn_m_total_sales_dscnt, :id, :cpn_id, :sales_range_no, :sales_range_min_value, :dscnt_value, :dscnt_rate
  json.url cpn_m_total_sales_dscnt_url(cpn_m_total_sales_dscnt, format: :json)
end
