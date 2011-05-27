class RemoveRecipeAndCategoryFromRecipesCategories < ActiveRecord::Migration
  def self.up
    remove_column :recipes_categories, :recipe_id
    add_column :recipes_categories, :name, :string
    remove_column :recipes_categories, :category_id
  end

  def self.down
    add_column :recipes_categories, :recipe, :string
    add_column :recipes_categories, :category, :string
    remove_column :recipes_categories, :name
  end
end
