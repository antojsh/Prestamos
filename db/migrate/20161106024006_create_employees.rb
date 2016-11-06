class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :nombres
      t.string :apellidos
      t.integer :identificacion
      t.date :fecha_nacimiento
      t.string :direccion
      t.integer :telefono

      t.timestamps null: false
    end
  end
end
