json.array!(@roles) do |role|
  json.extract! role, :id, :label, :description, :active, :created_by, :created_at
  json.url admin_role_url(role, format: :json)
end
