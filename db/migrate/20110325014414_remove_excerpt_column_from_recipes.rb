class RemoveExcerptColumnFromRecipes < ActiveRecord::Migration
  def self.up
    remove_column :recipes, :excerpt
  end

  def self.down
    add_column :recipes, :excerpt, :string
  end
end
