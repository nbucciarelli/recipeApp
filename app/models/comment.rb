class Comment < ActiveRecord::Base
  belongs_to :recipe
  validates :username, :body, :presence => true
  validate :reicpe_should_be_published

  def recipe_should_be_published
    errors.add(:recipe_id, "is not published yet") if recipe && !recipe.published?
  end

end