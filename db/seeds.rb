# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
User.create :username => 'admin',
                   :email => 'admin@example.com',
                   :password => 'secret',
                   :password_confirmation => 'secret'
                   
User.create :username => 'Mary',
                   :email => 'mary@example.com',
                   :password => 'secret',
                   :password_confirmation => 'secret'
                   
User.create :username => 'Robert',
                  :email => 'mary@example.com',
                  :password => 'secret',
                  :password_confirmation => 'secret'

User.create :username => 'Kitty',
                   :email => 'kitty@example.com',
                   :password => 'secret',
                   :password_confirmation => 'secret'
                   
User.create :username => 'G-Dad',
                 :email => 'g-dad@example.com',
                 :password => 'secret',
                 :password_confirmation => 'secret'
                   
User.create :username => 'Bobby',
                  :email => 'bobby@example.com',
                  :password => 'secret',
                  :password_confirmation => 'secret'
                  
User.create :username => 'Pam',
                   :email => 'pam@example.com',
                   :password => 'secret',
                   :password_confirmation => 'secret'
                   
User.create :username => 'Richard',
                  :email => 'richard@example.com',
                  :password => 'secret',
                  :password_confirmation => 'secret'
                  
User.create :username => 'Chief',
                  :email => 'chief@example.com',
                  :password => 'secret',
                  :password_confirmation => 'secret'
                  
User.create :username => 'Sumter',
                  :email => 'sumter@example.com',
                  :password => 'secret',
                  :password_confirmation => 'secret'
                  
User.create :username => 'Callie',
                  :email => 'callie@example.com',
                  :password => 'secret',
                  :password_confirmation => 'secret'
                  
User.create :username => 'Angelica',
                  :email => 'angelica@example.com',
                  :password => 'secret',
                  :password_confirmation => 'secret'

Profile.create :user_id => 3,
                :birthday => '02-03-1932',
                :bio => 'Born and raised in...',
                :color => 'Caucasian',
                :twitter => 'KittyPearce'
                  
Cuisine.create [{:name => 'Italian'},
                {:name => 'Mexican'},
                {:name => 'Southern'},
                {:name => 'Thai'},
                {:name => 'Japanese'},
                {:name => 'Chinese'},
                {:name => 'French'}]
               

Course.create [{:name => 'Appetizer'},
              {:name => 'Entree'},
              {:name => 'Desert'}]
            
Recipe.create :title => 'Bobby\'s Hominy',
              :ingredients => '1 of this, 2 of these, 1 lb of this, 1 oz of that',
              :directions => 'Bake at 350 degrees for 1 hour',
              :published_at => Date.today,
              :user_id => 5

Recipe.create :title => 'MaaMaa\'s Finest',
                :ingredients => '5oz of this, 2 lbs of this, 1 lb of this, 12 oz of that',
                :directions => 'Bake at 425 degrees for 1 hour',
                :published_at => Date.today,
                :user_id => 3

Recipe.create :title => 'Breakfast Casserole',
                :ingredients => '12oz of this, 1 lb of this, 9 lb of this, 25 oz of that',
                :directions => 'Bake at 425 degrees for 1 hour',
                :published_at => Date.today,
                :user_id => 3
                
Recipe.create :title => 'World\'s Best Salsa',
              :ingredients => '1 of this, 2 of these, 1 lb of this, 1 oz of that',
              :directions => 'Bake at 350 degrees for 1 hour',
              :published_at => Date.today,
              :user_id => 11
              
Recipe.create :title => 'Beer Baked Chicken',
              :ingredients => '1 of this, 2 of these, 1 lb of this, 1 oz of that',
              :directions => 'Bake at 350 degrees for 1 hour',
              :published_at => Date.today,
              :user_id => 7
