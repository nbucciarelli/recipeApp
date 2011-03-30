require 'test_helper'

class RecipeTest < ActiveSupport::TestCase
  
  #-----------------------------
  #-----Testing CRUD------------
  #-----------------------------
  test 'should create recipe' do
    recipe = Recipe.new
    
    recipe.user = users(:eugene)
    recipe.title = 'Oh my the best thing ever'
    recipe.ingredients = '1 of this 4 of that'
    recipe.directions = 'You had better do this...'
    recipe.published_at = DateTime.now
    
    assert recipe.save
  end
  
  test 'should NOT create recipe' do
    recipe = Recipe.new
    assert !recipe.save
  end
  
  test 'should find a recipe' do
    recipe_id = recipes(:best_recipe).id
    recipe = Recipe.find(recipe_id)
    
    assert_nothing_raised { recipe }
  end
  
  test 'should update recipe' do
    recipe = recipes(:best_recipe)
    assert recipe.update_attributes(:title => 'New Recipe Title')
  end
  
  test 'should NOT update recipe' do
    recipe = recipes(:best_recipe)
    assert !recipe.update_attributes(:title => '')
  end
  
  test 'should destroy recipe' do
    recipe = recipes(:best_recipe)
    recipe.destroy
    assert_raise(ActiveRecord::RecordNotFound) { Recipe.find(recipe.id) }
  end
  
  #----------Is this test useless?
  test 'should NOT destroy recipe' do
    recipe = recipes(:best_recipe)
    assert_nothing_raised(ActiveRecord::RecordNotFound) { Recipe.find(recipe.id) }
  end
  
  #-----------------------------
  #---Testing Validations-------
  #-----------------------------
  
end
