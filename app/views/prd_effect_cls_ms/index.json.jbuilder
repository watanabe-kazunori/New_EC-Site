json.array!(@prd_effect_cls_ms) do |prd_effect_cls_m|
  json.extract! prd_effect_cls_m, :id, :PRD_EFFECT_CLS_CD, :PRD_EFFECT_CLS_NAME
  json.url prd_effect_cls_m_url(prd_effect_cls_m, format: :json)
end
