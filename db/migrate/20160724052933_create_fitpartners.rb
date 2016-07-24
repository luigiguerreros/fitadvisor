class CreateFitpartners < ActiveRecord::Migration[5.0]
  def change
    create_table :fitpartners do |t|
      t.string :especialidad
      t.integer :costo
      t.string :tipo_costo
      t.string :disponibilidad
      t.text :descripcion
      t.string :address
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
