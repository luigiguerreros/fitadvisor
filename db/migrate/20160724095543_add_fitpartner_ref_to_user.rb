class AddFitpartnerRefToUser < ActiveRecord::Migration[5.0]
  def change
    add_reference :users, :fitpartner, foreign_key: true
  end
end
