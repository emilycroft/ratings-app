class LikesController < ApplicationController

  def new
  end

  def create
    @like = Like.new(like_params)
    @like.user_id = current_user.id
    @like.save
    flash[:notice] = "Successfully added to your list!"
    redirect_to "/#{@like.likeable_type.underscore.pluralize}/#{@like.likeable_id}"
  end

  def destroy
    @like = Like.find(params[:id])
    path = "/#{@like.likeable_type.underscore.pluralize}/#{@like.likeable_id}"
    @like.destroy
    flash[:notice] = "Successfully removed from your list!"
    redirect_to path
  end

  private
  def like_params
    params.require(:like).permit(:likeable_type, :likeable_id)
  end

end
