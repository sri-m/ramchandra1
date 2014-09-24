json.array!(@registraion_roles) do |registraion_role|
  json.extract! registraion_role, :id, :name, :email
  json.url registraion_role_url(registraion_role, format: :json)
end
