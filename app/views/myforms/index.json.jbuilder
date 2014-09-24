json.array!(@myforms) do |myform|
  json.extract! myform, :id, :name, :gender, :category, :email, :cell, :address
  json.url myform_url(myform, format: :json)
end
