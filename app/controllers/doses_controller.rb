class DosesController < ApplicationController
  before_action :set_cocktail
  before_action :set_dose, only: [:destroy]

  def create
    @dose = Dose.new(dose_params)
    @dose.cocktail = @cocktail
    @dose.save ? (redirect_to cocktail_path(@cocktail)) : (render 'cocktails/show')
  end

  def destroy
    @dose.destroy
    redirect_to cocktail_path(@cocktail)
  end

  private

  def set_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def set_dose
    @dose = Dose.find(params[:id])
  end

  def dose_params
    params.require(:dose).permit(:description, :cocktail_id, :ingredient_id)
  end
end
