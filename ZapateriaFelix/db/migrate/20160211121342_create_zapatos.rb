class CreateZapatos < ActiveRecord::Migration
  def change
    create_table :zapatos do |t|
      t.integer :talla
      t.string :color
      t.string :tipo

      t.timestamps
    end
  end
end
