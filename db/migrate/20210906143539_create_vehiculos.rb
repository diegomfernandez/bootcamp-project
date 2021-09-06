class CreateVehiculos < ActiveRecord::Migration[5.0]
  def change
    create_table :vehiculos do |t|
      t.integer :numero_tarjeta_circulacion
      t.string :numero_serie
      t.string :numero_placa
      t.timestamp :fecha_caducidad_tarjeta

      t.timestamps
    end
  end
end
