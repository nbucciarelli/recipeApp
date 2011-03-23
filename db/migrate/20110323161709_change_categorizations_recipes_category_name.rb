class ChangeCategorizationsRecipesCategoryName < ActiveRecord::Migration
  def self.up
    remove_column :categorizations, :recipes_category_id
    add_column :categorizations, :category_id, :integer
  end

  def self.down
    add_column :categorizations, :recipes_category_id, :integer
    remove_column :categorizations, :category_id
  end
end
