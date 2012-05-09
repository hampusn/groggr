class Recipe < ActiveRecord::Base
  belongs_to :drink
  has_many :ingredients
end
