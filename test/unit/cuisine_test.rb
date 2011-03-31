require 'test_helper'

class CuisineTest < ActiveSupport::TestCase
  
  test 'should create a new cuisine' do
    cuisine = Cuisine.new
    cuisine.name = 'Mongolian'
    
    assert cuisine.save
  end
  
  test 'should NOT create a new cuisine' do
    cuisine = Cuisine.new
    assert !cuisine.save
  end
  
  test 'should find a cuisine' do
    cuisine_id = cuisines(:mexican).id
    assert_nothing_raised { Cuisine.find(cuisine_id) }
  end
  
end
