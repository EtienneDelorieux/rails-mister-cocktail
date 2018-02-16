class CocktailsController < ApplicationController
  before_action :set_cocktail, only: [:show]

  def new
    @cocktail = Cocktail.new
  end

  def create
    @restaurant = Cocktail.create!(cocktail_params)
    redirect_to root_path
  end

  def index
    @cocktails = Cocktail.all
  end

  def show
    @dose = Dose.new
    @image_name = @cocktail.name.downcase + ".jpg"
  end

  private

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
end
