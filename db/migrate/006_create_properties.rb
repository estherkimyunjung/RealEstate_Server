class CreateProperties < ActiveRecord::Migration[6.0]
  def change
    create_table :properties do |t|
      t.string :image
      t.string :status
      t.string :category
      t.string :address
      t.integer :zipcode
      t.float :latitude
      t.float :longitude
      t.integer :prices
      t.integer :beds
      t.integer :baths
      t.integer :sqft
      t.integer :built
      t.belongs_to :agent, null: false, foreign_key: true

      t.timestamps
    end
  end
end
