class RemoveBookingsFromSpaces < ActiveRecord::Migration[7.1]
  def change
    remove_column :spaces, :bookings_id
  end
end
