class CreatePokemons < ActiveRecord::Migration
  def change
    create_table :pokemons do |t|
      t.integer :number
      t.string :name
      t.string :height
      t.string :specific

      t.timestamps null: false
    end
  end
end
