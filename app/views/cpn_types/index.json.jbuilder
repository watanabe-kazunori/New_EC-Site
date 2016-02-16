json.array!(@cpn_types) do |cpn_type|
  json.extract! cpn_type, :id, :id, :name
  json.url cpn_type_url(cpn_type, format: :json)
end
