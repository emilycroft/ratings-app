class ReviewsController < ApplicationController

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.user_id = current_user.id if logged_in?
    if @review.save
      flash[:notice] = "Your review has been submitted"
      redirect_to reviewable_path(@review)
    else
      flash[:notice] = "Your review is invalid"
      redirect_to reviewable_path(@review)
    end
  end

  def edit
  end

  def update
    @review = Review.find_by(
      user_id: current_user.id,
      reviewable_id: params[:review][:reviewable_id],
      reviewable_type: params[:review][:reviewable_type]
      )
    @review.update(review_params)
    redirect_to reviewable_path(@review)
  end

  def destroy
    @review = Review.find(params[:id])
    path = "/#{@review.reviewable_type.underscore.pluralize}/#{@review.reviewable_id}"
    @review.delete
    redirect_to path
  end


  private

  def review_params
    params.require(:review).permit(:content, :rating, :reviewable_type, :reviewable_id, :user_id)
  end

  def reviewable_path(review)
    "/#{review.reviewable_type.underscore.pluralize}/#{review.reviewable_id}"
  end

end
