class RemoveCategoryFromCategorizationsAndAddCuisineAndCourse < ActiveRecord::Migration
  def self.up
    remove_column :categorizations, :category_id
    add_column :categorizations, :cuisine_id, :integer
    add_column :categorizations, :course_id, :integer
  end

  def self.down
    add_column :categorizations, :category_id, :integer
    remove_column :categorizations, :cuisine_id
    remove_column :categorizations, :course_id
  end
end
