class RemoveUserRefToFitpartner < ActiveRecord::Migration[5.0]
  def change
    remove_reference :fitpartners, :user, foreign_key: true
  end
end
