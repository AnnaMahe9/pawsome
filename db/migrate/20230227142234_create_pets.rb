class CreatePets < ActiveRecord::Migration[7.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :species
      t.text :description
      t.integer :age
      t.integer :price_per_day
      t.references :owner, foreign_key: { to_table: "users" }

      t.timestamps
    end
  end
end
