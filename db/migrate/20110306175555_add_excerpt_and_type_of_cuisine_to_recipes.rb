class AddExcerptAndTypeOfCuisineToRecipes < ActiveRecord::Migration
  def self.up
    add_column :recipes, :excerpt, :string
    add_column :recipes, :type_of_cuisine, :string
  end

  def self.down
    remove_column :recipes, :excerpt
    remove_column :recipes, :type_of_cuisine
  end
end
