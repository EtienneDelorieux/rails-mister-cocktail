module CocktailsHelper
  def cocktail_image_path_for(cocktail)
    cl_image_path cocktail.photo
  end

  def average(cocktail)
    if !cocktail.reviews.empty?
      @stars = []
      cocktail.reviews.each { |review| @stars << review.stars }
      @stars.inject(&:+) / @stars.size
    else
      0
    end
  end
end
