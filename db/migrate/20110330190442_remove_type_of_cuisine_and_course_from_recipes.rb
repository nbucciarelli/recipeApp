class RemoveTypeOfCuisineAndCourseFromRecipes < ActiveRecord::Migration
  def self.up
    remove_column :recipes, :type_of_cuisine
    remove_column :recipes, :course
  end

  def self.down
    add_column :recipes, :type_of_cuisine, :string
    add_column :recipes, :course, :string
  end
end
