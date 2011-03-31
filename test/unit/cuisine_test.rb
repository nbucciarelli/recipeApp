require 'test_helper'

class CuisineTest < ActiveSupport::TestCase
  
  test 'should create a new cuisine' do
    cuisine = Cuisine.new
    cuisine.name = 'Mongolian'
    
    assert cuisine.save
  end
  
  test 'should find a cuisine' do
    cuisine_id = cuisines(:mexican).id
    assert_nothing_raised { Cuisine.find(cuisine_id) }
  end
  
  test 'should update a cuisine' do
    cuisine = cuisines(:italian)
    assert cuisine.update_attributes(:name => 'Italiano')
  end
  
  test 'should destroy a cuisine' do
    cuisine = cuisines(:french)
    cuisine.destroy
    
    assert_raise(ActiveRecord::RecordNotFound) { Cuisine.find(cuisine.id) }
  end
  
  #----------------
  #--Validations---
  #----------------
  test 'should not create a cuisine without a name' do
    cuisine = Cuisine.new
    assert !cuisine.valid?
    assert cuisine.errors[:name].any?
    assert_equal ["can't be blank"], cuisine.errors[:name]
    assert !cuisine.save
  end
  
  test 'should not update a cuisine without a name' do
    cuisine = cuisines(:chinese)
    assert !cuisine.update_attributes(:name => '')
  end
end
