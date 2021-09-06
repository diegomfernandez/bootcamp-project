class CreateArticulos < ActiveRecord::Migration[5.0]
  def change
    create_table :articulos do |t|
      t.string :descripcion
      t.timestamps
    end
  end
end
