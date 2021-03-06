class Cuisine < ActiveRecord::Base
  has_many :categorizations
  has_many :recipes, :through => :categorizations
  has_many :courses, :through => :categorizations

  validates :name, :uniqueness => true,
                   :presence => true

  # scope :order_by_name, order('name')
end
