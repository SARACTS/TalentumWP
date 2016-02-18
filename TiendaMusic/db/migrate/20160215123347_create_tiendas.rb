class CreateTiendas < ActiveRecord::Migration
  def change
    create_table :tiendas do |t|
      t.string :nombre
      t.string :artista
      t.integer :year

      t.timestamps
    end
  end
end
