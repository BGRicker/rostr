json.extract! employee, :id, :name, :role, :location, :full_time, :created_at, :updated_at
json.url employee_url(employee, format: :json)
