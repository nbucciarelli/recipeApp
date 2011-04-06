class RenameCommenterNameToUsername < ActiveRecord::Migration
  def self.up
    remove_column :comments, :name
    add_column :comments, :username, :string
  end

  def self.down
    add_column :comments, :name, :string
    remove_column :comments, :username
  end
end
