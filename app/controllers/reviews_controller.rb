class ReviewsController < ApplicationController

  def new
    @review = Review.new
  end

  def create
    binding.pry
    @review = Review.new(review_params)
    if @review.save
      redirect_to '/'
    end
  end


  private

  def review_params
    params.require(:review).permit(:content, :rating, :reviewable_type, :reviewable_id)
  end

end
