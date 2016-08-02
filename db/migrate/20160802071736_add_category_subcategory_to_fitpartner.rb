class AddCategorySubcategoryToFitpartner < ActiveRecord::Migration[5.0]
  def change
    add_column :fitpartners, :category, :string
    add_column :fitpartners, :subcategory, :string
  end
end
