class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find(params[:id])

    @review = Review.find_by(reviewable_id: @artist.id, user_id: current_user.id, reviewable_type: "Artist") if logged_in?
    if @review.blank?
      @review = Review.new
    end

    @like = Like.find_by(likeable_id: @artist.id, user_id: current_user.id, likeable_type: "Artist") if logged_in?
    if @like.blank?
      @like = Like.new
    end
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(artist_params)
    unless @artist.save
      render :new
    else
      flash[:notice] = "Artist has been successfully created"
      redirect_to artist_path(@artist)
    end
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    @artist = Artist.update(artist_params)
    redirect_to artist_path(@artist)
  end

  def destroy
    @artist = Artist.find(params[:id])
    @artist.destroy
    redirect_to artists_path
  end

  private

  def artist_params
    params.require(:artist).permit(:title)
  end
end
