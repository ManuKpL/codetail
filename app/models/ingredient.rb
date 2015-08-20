class Ingredient < ActiveRecord::Base
  has_many :doses, dependent: :destroy
  has_many :cocktails, through: :doses

  ingredients = %w(lemon ice 'mint leaves' redbull jagermeister sugar tonic gin rhum)
  INGREDIENTS = ingredients.map { |ingredient| ingredient.capitalize }

  validates :name, uniqueness: true, presence: true
  validates :name, inclusion: { in: INGREDIENTS, message: "Not one of the listed ingredients" }
end
