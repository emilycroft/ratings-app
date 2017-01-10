require_relative '../rails_helper'

describe VideoGame do

  let(:video_game) { VideoGame.new(title: "League of Legends") }
  let(:invalid_video_game) { VideoGame.new }

  it 'is able to create a new video game' do
    expect(video_game).to be_valid
  end

  it 'is invalid without a title' do
    invalid_video_game.valid?
    expect(invalid_video_game.errors.full_messages).to include("Title can't be blank")
  end

end
