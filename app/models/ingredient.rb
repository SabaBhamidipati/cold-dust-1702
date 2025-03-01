class Ingredient < ApplicationRecord
  validates_presence_of :name, :calories

  has_many :dish_ingredients, dependent: :destroy
  has_many :dishes, through: :dish_ingredients, dependent: :destroy
end
