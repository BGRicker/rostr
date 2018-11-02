json.extract! client, :id, :name, :backend, :frontend, :current, :employee_id, :created_at, :updated_at
json.url client_url(client, format: :json)
