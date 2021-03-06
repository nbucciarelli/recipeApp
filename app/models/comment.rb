class Comment < ActiveRecord::Base
  validates :name, :email, :body, :presence => true
  validate :recipe_should_be_published

  belongs_to :recipe

  def recipe_should_be_published
    errors.add(:recipe_id, "is not published yet") if recipe && !recipe.published?
  end

end