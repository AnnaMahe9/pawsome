class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.date :starts_on
      t.date :ends_on
      t.string :status
      t.integer :total_price
      t.references :pet, null: false, foreign_key: true
      t.references :renter, foreign_key: { to_table: "users" }

      t.timestamps
    end
  end
end
