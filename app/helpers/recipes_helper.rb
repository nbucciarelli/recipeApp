module RecipesHelper

  def display_recipe_image(recipe)
    if recipe.recipe_image_file_name.present?
      image_tag("../../images/#{recipe.recipe_image_file_name}")
    else
      image_tag("../../images/tikihut.jpg")
    end
  end
end
