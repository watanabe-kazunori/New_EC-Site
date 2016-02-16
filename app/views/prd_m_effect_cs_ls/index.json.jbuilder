json.array!(@prd_m_effect_csls) do |prd_m_effect_csl|
  json.extract! prd_m_effect_csl, :id, :SKU, :PRD_EFFECT_CLS_CD
  json.url prd_m_effect_csl_url(prd_m_effect_csl, format: :json)
end
