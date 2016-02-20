class AddPhoneNumberAndVerifiedToDestinations < ActiveRecord::Migration
  def change
    add_column :destinations, :phone_number, :string
    add_column :destinations, :verified, :boolean
  end
end
