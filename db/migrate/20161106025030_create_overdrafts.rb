class CreateOverdrafts < ActiveRecord::Migration
  def change
    create_table :overdrafts do |t|
      t.references :client, index: true, foreign_key: true
      t.references :employee, index: true, foreign_key: true
      t.integer :valor
      t.string :plazo
      t.string :tipo_plazo

      t.timestamps null: false
    end
  end
end
