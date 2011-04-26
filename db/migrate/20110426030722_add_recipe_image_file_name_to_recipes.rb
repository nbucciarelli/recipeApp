class AddRecipeImageFileNameToRecipes < ActiveRecord::Migration
  def self.up
    add_column :recipes, :recipe_image_content_type, :string
    add_column :recipes, :recipe_image_file_size, :integer
    add_column :recipes, :recipe_image_updated_at, :datetime
  end

  def self.down
    remove_column :recipes, :recipe_image_file_name
    remove_column :recipes, :recipe_image_content_type
    remove_column :recipes, :recipe_image_file_size
    remove_column :recipes, :recipe_image_updated_at
  end
end
