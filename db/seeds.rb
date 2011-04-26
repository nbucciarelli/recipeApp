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
                   :password_confirmation => 'secret',
                   :country => 'Ireland'

User.create :username => 'Jane',
                   :email => 'Jane@example.com',
                   :password => 'secret',
                   :password_confirmation => 'secret',
                   :website => 'http://www.jane.com',
                   :country => 'Australia'

User.create :username => 'Robert',
                  :email => 'robert@example.com',
                  :password => 'secret',
                  :password_confirmation => 'secret',
                  :website => 'http://www.robert.com',
                  :country => 'United States'

User.create :username => 'Kitty',
                   :email => 'kitty@example.com',
                   :password => 'secret',
                   :password_confirmation => 'secret',
                   :website => 'http://www.kittyblake.com',
                   :country => 'Uganda'

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
                  :password_confirmation => 'secret',
                  :website => 'http://www.richardbpearce.com',
                  :country => 'Scotland'

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
                  :password_confirmation => 'secret',
                  :website => 'http://www.angelicamaelissa.com',
                  :country => 'United Kingdom'

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
                {:name => 'French'},
                {:name => 'Indian'},
                {:name => 'Greek'},
                {:name => 'Korean'},
                {:name => 'Mediterranean'}]


Course.create [{:name => 'Appetizer'},
              {:name => 'Entree'},
              {:name => 'Desert'}]

Recipe.create :title => 'Bobby\'s Hominy',
              :course_ids => [2],
              :cuisine_ids => [3],
              :ingredients => '1 of this, 2 of these, 1 lb of this, 1 oz of that',
              :directions => 'Bake at 350 degrees for 1 hour',
              :published_at => Date.today,
              :recipe_image_file_name => 'chef_small.jpg',
              :user_id => 6

Recipe.create :title => 'MaaMaa\'s Finest',
                :course_ids => [3],
                :cuisine_ids => [3],
                :ingredients => '5oz of this, 2 lbs of this, 1 lb of this, 12 oz of that',
                :directions => 'Bake at 425 degrees for 1 hour',
                :published_at => Date.today,
                :recipe_image_file_name => 'dog_cooking_small.jpg',
                :user_id => 4

Recipe.create :title => 'Breakfast Casserole',
                :course_ids => [2],
                :cuisine_ids => [3],
                :ingredients => '12oz of this, 1 lb of this, 9 lb of this, 25 oz of that',
                :directions => 'Bake at 425 degrees for 1 hour',
                :published_at => Date.today,
                :recipe_image_file_name => 'family_dinner_small.jpg',
                :user_id => 4

Recipe.create :title => 'World\'s Best Salsa',
              :course_ids => [1],
              :cuisine_ids => [2],
              :ingredients => '1 of this, 2 of these, 1 lb of this, 1 oz of that',
              :directions => 'Bake at 350 degrees for 1 hour',
              :published_at => Date.today,
              :recipe_image_file_name => 'food_small.jpg',
              :user_id => 12

Recipe.create :title => 'Baked Chicken',
              :course_ids => [2],
              :cuisine_ids => [1, 2, 3, 4, 5, 6],
              :ingredients => '1 of this, 2 of these, 1 lb of this, 1 oz of that',
              :directions => 'Bake at 350 degrees for 1 hour',
              :published_at => Date.today,
              :recipe_image_file_name => 'tikihut_small.jpg',
              :user_id => 8
