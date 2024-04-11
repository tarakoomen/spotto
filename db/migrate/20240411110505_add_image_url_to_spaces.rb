class AddImageUrlToSpaces < ActiveRecord::Migration[7.1]
  def change
    add_column :spaces, :image_url, :string
  end
end
