json.array!(@comm_rate_ms) do |comm_rate_m|
  json.extract! comm_rate_m, :id, :comm_rate_ver, :comm_rate, :start_date, :end_date
  json.url comm_rate_m_url(comm_rate_m, format: :json)
end
