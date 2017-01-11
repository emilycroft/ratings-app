class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
    @review = Review.new
    if current_user.likes.pluck(:likeable_id).include?(@artist.id)
      @like = Like.find_by(likeable_id: @artist.id)
    else
      @like = Like.new
    end
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create(artist_params)
    redirect_to artist_path(@artist)
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
    params.require(:artist).permit(:name)
  end
end
