class AddCourseToRecipe < ActiveRecord::Migration
  def self.up
    add_column :recipes, :course, :string
  end

  def self.down
    remove_column :recipes, :course
  end
end
