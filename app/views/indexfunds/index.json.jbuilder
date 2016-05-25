json.array!(@indexfunds) do |indexfund|
  json.extract! indexfund, :id
  json.url indexfund_url(indexfund, format: :json)
end
