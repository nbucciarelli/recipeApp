class Course < ActiveRecord::Base
  has_many :categorizations
  has_many :recipes, :through => :categorizations
  has_many :cuisines, :through => :categorizations
end
