# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
User.create :username => 'Mary',
                   :email => 'mary@example.com',
                   :password => 'secret',
                   :password_confirmation => 'secret'

Cuisine.create [{:name => 'French'},
                 {:name => 'Italian'},
                 {:name => 'Mexican'},
                 {:name => 'Southern'}]

Course.create [{:name => 'Appetizer'},
                {:name => 'Entree'},
                {:name => 'Desert'}]
            
Recipe.create :title => 'Bobby\'s Hominy',
              :ingredients => '1 of this, 2 of these, 1 lb of this, 1 oz of that',
              :directions => 'Bake at 350 degrees for 1 hour',
              :published_at => Date.today

Recipe.create :title => 'MaaMaa\'s Finest',
                :ingredients => '5oz of this, 2 lbs of this, 1 lb of this, 12 oz of that',
                :directions => 'Bake at 425 degrees for 1 hour',
                :published_at => Date.today

Recipe.create :title => 'Breakfast Casserole',
                :ingredients => '12oz of this, 1 lb of this, 9 lb of this, 25 oz of that',
                :directions => 'Bake at 425 degrees for 1 hour',
                :published_at => Date.today