class VideoGamesController < ApplicationController
  def index
    @video_games = VideoGame.all
  end

  def show
    @video_game = VideoGame.find(params[:id])

    @review = Review.find_by(reviewable_id: @video_game.id, user_id: current_user.id, reviewable_type: "VideoGame")
    if @review.blank?
      @review = Review.new
    end

    @like = Like.find_by(likeable_id: @video_game.id, user_id: current_user.id, likeable_type: "VideoGame")
    if @like.blank?
      @like = Like.new
    end
  end

  def new
    @video_game = VideoGame.new
  end


  def create
    @video_game = VideoGame.new(video_game_params)
    unless @video_game.save
      render :new
    else
      flash[:notice] = "Video Game has been successfully created"
      redirect_to video_game_path(@video_game)
    end
  end

  def edit
    @video_game = VideoGame.find(params[:id])
  end

  def update
    @video_game = VideoGame.update(video_game_params)
    redirect_to video_game_path(@video_game)
  end

  def destroy
    @video_game = VideoGame.find(params[:id])
    @video_game.destroy
    redirect_to video_games_path
  end

  private

  def video_game_params
    params.require(:video_game).permit(:title)
  end
end
