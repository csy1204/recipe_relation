class Item < ApplicationRecord
  has_many :ingreds
  has_many :recipes, through: :ingreds
end
