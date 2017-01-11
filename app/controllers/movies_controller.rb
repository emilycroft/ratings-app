class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
    @review = Review.new
    if current_user.likes.pluck(:likeable_id).include?(@movie.id)
      @like = Like.find_by(likeable_id: @movie.id)
    else
      @like = Like.new
    end
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    unless @movie.save
      render :new
    else
      flash[:notice] = "Movie has been successfully created"
      redirect_to movie_path(@movie)
    end
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.update(movie_params)
    redirect_to movie_path(@movie)
  end


  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    redirect_to movies_path
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :director)
  end
end
