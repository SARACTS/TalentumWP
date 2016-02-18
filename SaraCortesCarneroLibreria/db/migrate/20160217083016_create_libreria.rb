class CreateLibreria < ActiveRecord::Migration
  def change
    create_table :libreria do |t|
      t.string :genero
      t.string :titulo
      t.string :autor

      t.timestamps
    end
  end
end
