class Categorization < ActiveRecord::Base
  belongs_to :cuisine
  belongs_to :course
  belongs_to :recipe
end
