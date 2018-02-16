module CocktailsHelper
  def cocktail_image_path_for(cocktail)
    image_path(cocktail.name.downcase.gsub(/ /, "-") + '.jpg')
  end
end
