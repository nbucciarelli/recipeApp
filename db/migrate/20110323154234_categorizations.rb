class Categorizations < ActiveRecord::Migration
  def self.up
    create_table :categorizations do |t|
      t.string :name
      t.integer :recipe_id
      t.integer :recipes_category_id
      t.timestamps
    end
  end

  def self.down
    drop_table :categorizations
  end
end
