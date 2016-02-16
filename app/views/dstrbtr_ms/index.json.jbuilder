json.array!(@dstrbtr_ms) do |dstrbtr_m|
  json.extract! dstrbtr_m, :id, :accnt_cd, :cntrct_start_date, :cntrct_start_date, :cntrct_renewal_date, :cntrct_next_renewal_date, :cntrct_end_date, :rgstr_date, :ptrn_cd
  json.url dstrbtr_m_url(dstrbtr_m, format: :json)
end
