class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.integer :user_id
      t.integer :screening_detail_id
      t.string :booking_amount
      t.string :seat_number, array: true, default: []

      t.timestamps
    end
  end
end
