class Dose < ActiveRecord::Base
  belongs_to :cocktail
  belongs_to :ingredient
  validates :description, :cocktail_id, :ingredient_id, presence: true
  validates :cocktail_id, uniqueness: { scope: :ingredient_id, message: "Only one dose allowed for the same cocktail + ingredient couple" }
end
