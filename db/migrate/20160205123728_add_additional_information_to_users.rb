class AddAdditionalInformationToUsers < ActiveRecord::Migration
  def change
    add_column :users, :last_name, :string
    add_column :users, :date_of_birth, :string
    add_column :users, :gender, :integer
  end
end
