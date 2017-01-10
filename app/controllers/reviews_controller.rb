class ReviewsController < ApplicationController

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.user_id = current_user.id if logged_in?
    if @review.save
      redirect_to reviewable_path(@review)
    end
  end


  private

  def review_params
    params.require(:review).permit(:content, :rating, :reviewable_type, :reviewable_id, :user_id)
  end

  def reviewable_path(review)
    "/#{review.reviewable_type.underscore.pluralize}/#{review.reviewable_id}"
  end

end
