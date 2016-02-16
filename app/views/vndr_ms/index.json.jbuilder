json.array!(@vndr_ms) do |vndr_m|
  json.extract! vndr_m, :id, :ACCNT_CD, :CNTRCT_START_DTE, :CNTRCT_LST_UPD_DATE, :CNTRCT_EXP_DATE, :SALES_REPORT_METHOD, :MONTHLY_REPORT_TYPE, :PAY_METHOD
  json.url vndr_m_url(vndr_m, format: :json)
end
