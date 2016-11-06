json.extract! employee, :id, :nombres, :apellidos, :identificacion, :fecha_nacimiento, :direccion, :telefono, :created_at, :updated_at
json.url employee_url(employee, format: :json)