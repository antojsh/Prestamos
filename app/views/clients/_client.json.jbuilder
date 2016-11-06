json.extract! client, :id, :nombres, :apellidos, :identificacion, :fecha_nacimiento, :direccion, :latitud, :longitud, :created_at, :updated_at
json.url client_url(client, format: :json)