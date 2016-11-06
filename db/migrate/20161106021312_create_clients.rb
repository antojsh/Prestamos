class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :nombres
      t.string :apellidos
      t.integer :identificacion
      t.date :fecha_nacimiento
      t.string :direccion
      t.integer :latitud
      t.integer :longitud

      t.timestamps null: false
    end
  end
end
