class AddNameToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :fullname, :string
    add_column :users, :gender, :string
    add_column :users, :country, :string
  end
end
