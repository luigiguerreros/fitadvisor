class AddNamefitToFitpartner < ActiveRecord::Migration[5.0]
  def change
    add_column :fitpartners, :namefit, :string
  end
end
