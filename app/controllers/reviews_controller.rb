class ReviewsController < ApplicationController

  def new
    @review = Review.new
  end

  def create
    @current_user = User.first
    @review = Review.new(review_params)
    @review.user_id = @current_user.id
    if @review.save
      redirect_to book_path(@review.reviewable_id)
    end
  end


  private

  def review_params
    params.require(:review).permit(:content, :rating, :reviewable_type, :reviewable_id, :user_id)
  end

end
