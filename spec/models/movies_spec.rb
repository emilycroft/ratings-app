require_relative '../rails_helper'

describe Movie do

  let(:movie) { Movie.new(title: "Brokeback Mountain", director: "Ang Lee") }
  let(:invalid_movie) { Movie.new }

  it 'is able to create a new movie' do
    expect(movie).to be_valid
  end

  it 'is invalid without a title' do
    invalid_movie.valid?
    expect(invalid_movie.errors.full_messages).to include("Title can't be blank")
  end

  it 'is invalid without a director' do
    invalid_movie.valid?
    expect(invalid_movie.errors.full_messages).to include("Director can't be blank")
  end
  
end
