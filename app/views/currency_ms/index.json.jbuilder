json.array!(@currency_ms) do |currency_m|
  json.extract! currency_m, :id, :currency_cd, :currency_sign, :currency_name, :currency_name_e, :currency_unit, :currency_unit_e
  json.url currency_m_url(currency_m, format: :json)
end
