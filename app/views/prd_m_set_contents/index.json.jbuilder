json.array!(@prd_m_set_contents) do |prd_m_set_content|
  json.extract! prd_m_set_content, :id, :sku, :sku_content
  json.url prd_m_set_content_url(prd_m_set_content, format: :json)
end
