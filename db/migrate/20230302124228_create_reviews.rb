class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.integer :rate
      t.text :comment
      t.references :pet, null: false, foreign_key: true

      t.timestamps
    end
  end
end
