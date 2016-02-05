class CreateDestinations < ActiveRecord::Migration
  def change
    create_table :destinations do |t|
      t.string :name
      t.string :latitude
      t.string :longitude
      t.string :logo
      t.string :cover
      t.text :description
      t.string :email
      t.string :url
      t.references :user, index: true, foreign_key: true
      t.references :category, index: true, foreign_key: true
      t.integer :price
      t.integer :discount

      t.timestamps null: false
    end
  end
end
