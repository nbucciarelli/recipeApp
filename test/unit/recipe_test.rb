require 'test_helper'

class RecipeTest < ActiveSupport::TestCase
  
  #-----------------------------
  #-----Testing CRUD------------
  #-----------------------------
  test 'should create recipe' do
    recipe = Recipe.new
    
    recipe.user = users(:eugene)
    recipe.title = "Eugene's Finest"
    recipe.ingredients = "1 of this 2 of these"
    recipe.directions = "This is how we do it"
    recipe.published_at = DateTime.now
    
    assert recipe.save
  end
  
  test 'should NOT create recipe' do
    recipe = Recipe.new
    assert !recipe.save
  end
  
  test 'should find a recipe' do
    recipe_id = recipes(:best_recipe).id
    assert_nothing_raised { Recipe.find(recipe_id) }
  end
  
  test 'should update recipe' do
    recipe = recipes(:best_recipe)
    assert recipe.update_attributes(:title => 'Worst Recipe')
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
  
  
  #-----------------------------
  #---Testing Validations-------
  #-----------------------------
  test 'should not create a recipe without a title, ingredients, directions, and published_at' do
    recipe = Recipe.new
    assert !recipe.valid?
    assert recipe.errors[:title].any?
    assert recipe.errors[:ingredients].any?
    assert recipe.errors[:directions].any?
    assert recipe.errors[:published_at].any?
    assert_equal ["can't be blank"], recipe.errors[:title]
    assert_equal ["can't be blank"], recipe.errors[:ingredients]
    assert_equal ["can't be blank"], recipe.errors[:directions]
    assert_equal ["can't be blank"], recipe.errors[:published_at]
    assert !recipe.save
  end

end
