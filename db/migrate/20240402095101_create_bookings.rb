class CreateBookings < ActiveRecord::Migration[7.1]
  def change
    create_table :bookings do |t|
      t.date :start
      t.date :end
      t.integer :price
      t.text :description
      t.references :space, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.boolean :confirmed

      t.timestamps
    end
  end
end
