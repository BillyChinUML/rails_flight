class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.datetime :date
      t.string :departure_airport
      t.string :arrival_airport
      t.references :flight, null: false, foreign_key: true

      t.timestamps
    end
  end
end
