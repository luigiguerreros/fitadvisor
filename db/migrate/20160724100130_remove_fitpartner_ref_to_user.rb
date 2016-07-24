class RemoveFitpartnerRefToUser < ActiveRecord::Migration[5.0]
  def change
    remove_reference :users, :fitpartner, foreign_key: true
  end
end
