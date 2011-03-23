class RemoveNameColumnFromCategorizations < ActiveRecord::Migration
  def self.up
    remove_column :categorizations, :name
  end

  def self.down
    add_column :categorizations, :name, :string
  end
end
