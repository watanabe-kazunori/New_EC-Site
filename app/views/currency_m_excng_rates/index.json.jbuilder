json.array!(@currency_m_excng_rates) do |currency_m_excng_rate|
  json.extract! currency_m_excng_rate, :id, :currency_cd, :exchng_rate_ver, :exchng_rate, :start_date, :end_date, :rgstr_dt, :rgstr_usr, :lst_upd_dt, :lst_upd_usr
  json.url currency_m_excng_rate_url(currency_m_excng_rate, format: :json)
end
