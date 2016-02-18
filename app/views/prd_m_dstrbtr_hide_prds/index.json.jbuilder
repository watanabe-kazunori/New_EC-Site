json.array!(@prd_m_dstrbtr_hide_prds) do |prd_m_dstrbtr_hide_prd|
  json.extract! prd_m_dstrbtr_hide_prd, :id, :sku, :accnt_cd
  json.url prd_m_dstrbtr_hide_prd_url(prd_m_dstrbtr_hide_prd, format: :json)
end
