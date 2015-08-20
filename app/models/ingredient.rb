class Ingredient < ActiveRecord::Base
  has_many :doses, dependent: :destroy
  has_many :cocktails, through: :doses

  ingredients = %w(lemon ice mint_leaves redbull jagermeister sugar tonic gin rhum)

  validates :name, uniqueness: true, presence: true
end
