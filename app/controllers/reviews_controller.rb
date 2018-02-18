class ReviewsController < ApplicationController
  before_action :set_cocktail, only: [:new, :create]

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.cocktail_id = @cocktail.id

    if @review.save
      redirect_to cocktail_path(@cocktail)
    else
      render 'cocktails/show'
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @cocktail = Review.find(params[:id]).cocktail_id
    @review.destroy
    redirect_to cocktail_path(@cocktail)
  end

  private

  def set_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def review_params
    params.require(:review).permit(:stars, :content, :cocktail_id)
  end
end
