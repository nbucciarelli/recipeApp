class RenameUsernameToNameInCommentTable < ActiveRecord::Migration
  def self.up
    rename_column :comments, :username, :name
  end

  def self.down
    rename_column :comments, :name, :username
  end
end
