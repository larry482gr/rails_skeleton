json.array!(@permissions) do |permission|
  json.extract! permission, :id, :label, :description, :active, :created_by, :created_at
  json.url admin_permission_url(permission, format: :json)
end
