class AddIdToFitpartners < ActiveRecord::Migration[5.0]
  def change
    add_column :fitpartners, :fitpartner_id, :integer
  end
end
