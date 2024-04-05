class ChangeAverageRatingInSpacesToFloat < ActiveRecord::Migration[7.1]
  def change
    change_column :spaces, :average_rating, :float
  end
end
