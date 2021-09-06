class CreateInfraccions < ActiveRecord::Migration[5.0]
  def change
    create_table :infraccions do |t|
      t.references :articulo, foreign_key: true
      t.references :propietario, foreign_key: true
      t.references :oficial, foreign_key: true
      t.float :importe
      t.timestamp :fecha
      t.string :calle
      t.string :municipio

      t.timestamps
    end
  end
end
