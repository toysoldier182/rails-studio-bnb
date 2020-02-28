class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.date :booking_date_start
      t.date :booking_date_end
      t.string :description
      t.boolean :approval, default: false
      t.references :user, null: false, foreign_key: true
      t.references :studio, null: false, foreign_key: true

      t.timestamps
    end
  end
end
