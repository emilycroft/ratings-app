require_relative '../rails_helper'

describe Artist do

  let(:artist) { Artist.new(title: 'Mango')}
  let(:invalid_artist) { Artist.new }

  it 'has a title attribute' do
    expect(artist).to have_attributes(title: 'Mango')
  end

  it 'is invalid without a title' do
    invalid_artist.valid?
    expect(invalid_artist.errors.full_messages).to include("Title can't be blank")
  end

  it 'is valid with a title' do
    expect(artist.errors).to be_empty
  end

end
