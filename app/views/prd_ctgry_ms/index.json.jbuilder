json.array!(@prd_ctgry_ms) do |prd_ctgry_m|
  json.extract! prd_ctgry_m, :id, :PRD_CTGRY_CD, :PRD_CTGRY_NAME
  json.url prd_ctgry_m_url(prd_ctgry_m, format: :json)
end
