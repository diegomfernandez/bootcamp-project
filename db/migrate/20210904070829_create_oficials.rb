class CreateOficials < ActiveRecord::Migration[5.0]
  def change
    create_table :oficials do |t|
      t.string :numero_agente

      t.timestamps
    end
  end
end
