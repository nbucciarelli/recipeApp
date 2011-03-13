class Recipe < ActiveRecord::Base
  validates :title, :excerpt, :ingredients, :directions, :published_at, :presence => true
  
  belongs_to :user
  has_and_belongs_to_many :categories
  has_many :comments
  
  def long_title
    "#{title} - #{published_at}"
  end
end
