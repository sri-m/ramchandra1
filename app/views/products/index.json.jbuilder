json.array!(@products) do |product|
  json.extract! product, :id, :name, :email, :cell, :subject
  json.url product_url(product, format: :json)
end
