class CreatePersonas < ActiveRecord::Migration[5.0]
  def change
    create_table :personas do |t|
      t.references :personable, polymorphic: true
      t.string :nombres
      t.string :apellido_paterno
      t.string :apellido_materno

      t.timestamps
    end
  end
end
