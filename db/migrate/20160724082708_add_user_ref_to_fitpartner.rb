class AddUserRefToFitpartner < ActiveRecord::Migration[5.0]
  def change
    add_reference :fitpartners, :user, foreign_key: true
  end
end
