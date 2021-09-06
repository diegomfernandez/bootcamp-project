class CreatePropietarios < ActiveRecord::Migration[5.0]
  def change
    create_table :propietarios do |t|
      t.string :curp
      t.timestamp :fecha_nacimiento

      t.timestamps
    end
  end
end
