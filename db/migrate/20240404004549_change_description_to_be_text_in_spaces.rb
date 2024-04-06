class ChangeDescriptionToBeTextInSpaces < ActiveRecord::Migration[7.1]
  def change
    change_column :spaces, :description, :text
  end
end
