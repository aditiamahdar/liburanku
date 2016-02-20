class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.references :user, index: true, foreign_key: true
      t.references :destination, index: true, foreign_key: true
      t.integer :price
      t.integer :quantity
      t.datetime :ticket_date

      t.timestamps null: false
    end
  end
end
