class CreateSpaces < ActiveRecord::Migration[7.1]
  def change
    create_table :spaces do |t|
      t.string :location
      t.integer :price
      t.boolean :available
      t.string :name
      t.string :description
      t.integer :rating
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
