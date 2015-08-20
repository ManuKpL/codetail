class Dose < ActiveRecord::Base
  belongs_to :cocktail
  belongs_to :ingredient
  validates_presence_of :description, :cocktail_id, :ingredient_id
  validates :cocktail_id, uniqueness: { scope: :ingredient_id, message: "Only one dose allowed for the same cocktail + ingredient couple" }
end
