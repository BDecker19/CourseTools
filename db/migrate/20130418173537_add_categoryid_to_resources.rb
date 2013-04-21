class AddCategoryidToResources < ActiveRecord::Migration
  def change
    add_column :resources, :category_id, :integer
  end
end
