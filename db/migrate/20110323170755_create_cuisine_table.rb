class CreateCuisineTable < ActiveRecord::Migration
  def self.up
    create_table :cuisines do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :cuisines
  end
end
