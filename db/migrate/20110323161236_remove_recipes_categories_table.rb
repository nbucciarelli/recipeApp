class RemoveRecipesCategoriesTable < ActiveRecord::Migration
  def self.up
    drop_table :recipes_categories
  end

  def self.down
    create_table :recipes_categories, :id => false do |t|
      t.references :recipe
      t.references :category
    end
  end
end
