require 'test_helper'

class RecipeTest < ActiveSupport::TestCase
  
  test 'should create recipe' do
    recipe = Recipe.new
    
    recipe.user = users(:richard)
    # recipe.course_ids = course(:entree)
    # recipe.cuisine_ids = cuisine(:mexican)
    recipe.title = 'Best recipe everrrr'
    recipe.ingredients = '1 of these and 3 of these'
    recipe.directions = 'Do this an this and this!'
    recipe.published_at = Date.today
    
    assert recipe.save
  end
  
end
