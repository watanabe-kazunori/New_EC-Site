json.array!(@cpn_ms) do |cpn_m|
  json.extract! cpn_m, :id, :CPN_ID, :CPN_CD, :CPN_ST, :CPN_TITLE, :CPN_CLS, :CPN_DISCNT_TYPE, :VNDR_CPN, :USE_LIMIT, :START_DT, :EXPIRATION_DT, :DSCNT_VALUE, :DSCNT_RATE, :TRGT_PRD_CNDTN, :EXCLD_PRD_CNDTN
  json.url cpn_m_url(cpn_m, format: :json)
end
