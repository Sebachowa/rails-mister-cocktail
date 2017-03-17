require 'json'
require 'open-uri'

class CocktailsController < ApplicationController

  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
    @dose = @cocktail.doses
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    cocktail_params = params.require(:cocktail).permit(:name, :photo)
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def destroy
    @cocktail = Cocktail.find(params[:id])
    @cocktail.destroy
    redirect_to cocktails_path
  end

# private

#   def scraper
#     cocktail = @cocktail.name.gsub(' ', '%20')
#     raise
#     url = 'http://www.thecocktaildb.com/api/json/v1/1/search.php?s=xxxxxxxxxx'
#     ingredients_serialized = open(url).read
#     ingredients = JSON.parse(ingredients_serialized)

#     ingredients["drinks"].each do |ingredient|
#       Ingredient.create(name: ingredient["strIngredient1"])
#     end
#   end
end
