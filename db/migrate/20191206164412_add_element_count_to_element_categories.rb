class AddElementCountToElementCategories < ActiveRecord::Migration[5.1]
  def change
    add_column :element_categories, :elements_count, :integer
  end
end
