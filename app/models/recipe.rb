class Recipe < ApplicationRecord
  has_many :ingreds
  has_many :items, through: :ingreds

end
