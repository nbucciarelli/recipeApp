module RecipesHelper

  def display_recipe_image(recipe)
    if recipe.recipe_image_file_name.present?
      image_tag("../../images/food_small.jpg")
    else
      image_tag("../../images/tikihut_small.jpg")
    end
  end
end
