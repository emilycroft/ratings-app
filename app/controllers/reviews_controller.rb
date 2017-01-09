class ReviewsController < ApplicationController

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    if @review.save
      redirect_to '/'
    else
      render :new
    end
  end


  private

  def review_params
    params.require(:review).permit(:content, :rating, :reviewable_type)
  end

end
