class SearchController < ApplicationController
  def index
    if params[:query].present?
      @cocktails = Cocktail.search(params[:query])
    else
      @cocktails = Cocktail.all
    end
  end
end
