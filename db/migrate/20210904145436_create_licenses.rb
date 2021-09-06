class CreateLicenses < ActiveRecord::Migration[5.0]
  def change
    create_table :licenses do |t|
      t.string :numero
      t.string :tipo
      t.timestamp :fecha_caducidad
      t.references :propietario, foreign_key: true

      t.timestamps
    end
  end
end
