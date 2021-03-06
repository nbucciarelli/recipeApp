class Recipe < ActiveRecord::Base
  validates :title, :ingredients, :directions, :published_at, :presence => true

  belongs_to :user
  has_many :categorizations
  has_many :cuisines, :through => :categorizations
  has_many :courses, :through => :categorizations
  has_many :comments

  default_scope order('created_at DESC')

  def long_title
    "#{title} - #{published_at}"
  end

  def published?
    published_at.present?
  end

  def owned_by?(owner)
    return false unless owner.is_a? User
    user == owner
  end
end
