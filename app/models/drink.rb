class Drink < ActiveRecord::Base
  has_many :recipes
end
