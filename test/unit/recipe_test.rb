require 'test_helper'

class RecipeTest < ActiveSupport::TestCase
  
  test 'should create recipe' do
    recipe = Recipe.new
    
    recipe.user = users(:eugene)
    recipe.title = 'Best recipe everrrr'
    recipe.ingredients = '1 of these and 3 of these'
    recipe.directions = 'Do this an this and this!'
    recipe.published_at = Date.today
    
    assert recipe.save
  end
  
  test 'should NOT create recipe' do
    recipe = Recipe.new
    assert !recipe.save
  end
  
  test 'should find recipe' do
    recipe_id = recipes(:best_recipe).id
    assert_nothing_raised { Recipe.find(recipe_id) }
  end
end
