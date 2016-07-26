class RemoveAddIdToFitpartners < ActiveRecord::Migration[5.0]
  def change
    remove_column :fitpartners, :fitpartner_id, :integer
  end
end
