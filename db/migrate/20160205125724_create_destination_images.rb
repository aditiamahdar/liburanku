class CreateDestinationImages < ActiveRecord::Migration
  def change
    create_table :destination_images do |t|
      t.references :destination, index: true, foreign_key: true
      t.string :destination_image

      t.timestamps null: false
    end
  end
end
