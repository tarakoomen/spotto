class ChangeRatingToAverageRatingInSpaces < ActiveRecord::Migration[7.1]
  def change
    rename_column :spaces, :rating, :average_rating
  end
end
