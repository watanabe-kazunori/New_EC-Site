json.array!(@prd_host_app_ms) do |prd_host_app_m|
  json.extract! prd_host_app_m, :id, :APP_CD, :APP_NAME, :APP_VER
  json.url prd_host_app_m_url(prd_host_app_m, format: :json)
end
