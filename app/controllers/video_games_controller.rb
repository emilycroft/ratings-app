class VideoGamesController < ApplicationController
  def index
    @video_games = VideoGame.all
  end

  def show
    @video_game = VideoGame.find(params[:id])
  end

  def new
    @video_game = VideoGame.new
  end

  def create
    @video_game = VideoGame.create(video_game_params)
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
