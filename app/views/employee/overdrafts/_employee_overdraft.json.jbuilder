json.extract! employee_overdraft, :id, :client_id, :employee_id, :valor, :plazo, :tipo_plazo, :created_at, :updated_at
json.url employee_overdraft_url(employee_overdraft, format: :json)