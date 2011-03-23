class RemoveCategoryIdFromCategories < ActiveRecord::Migration
  def self.up
    remove_column :categories, :category_id
  end

  def self.down
    add_column :categories, :category_id, :integer
  end
end
