json.array!(@providers) do |provider|
  json.extract! provider, :id, :product_id, :quantidade, :price
  json.url provider_url(provider, format: :json)
end
