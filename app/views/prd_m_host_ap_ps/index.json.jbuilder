json.array!(@prd_m_host_apps) do |prd_m_host_app|
  json.extract! prd_m_host_app, :id, :SKU, :APP_CD
  json.url prd_m_host_app_url(prd_m_host_app, format: :json)
end
