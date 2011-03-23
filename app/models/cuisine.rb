class Cuisine < ActiveRecord::Base
  has_many :categorizations
  has_many :recipes, :through => :categorizations
  has_many :courses, :through => :categorizations
end
