require_relative '../rails_helper'

describe Review do

  # let(:valid_user) { User.create(name: "McTesty", username: "Captain Test", email: "test@babyrater.gov", password: "1234", password_confirmation: "1234") }
  # let(:review) { Review.create(content: "great media", reviewable_type: "Book", reviewable_id: 4, rating: 3, user_id: 1) }

  before do
    @reviewable = Book.create(title: "a good book", author: "a good author")
    @valid_user = User.create(name: "McTesty", username: "Captain Test", email: "test@babyrater.gov", password: "1234", password_confirmation: "1234")
    @valid_review = Review.create(content: "great media", reviewable_type: "Book", reviewable_id: @reviewable.id, rating: 3, user_id: @valid_user.id)
    @invalid_review = Review.create
  end

  let(:invalid_review) {Review.create}

  it 'is able to create a new review' do
    expect(@valid_review).to be_valid
  end

  it 'is invalid without content' do
    # @invalid_review.valid?
    expect(@invalid_review.errors.full_messages).to include("Content can't be blank")
    # expect(@invalid_review).to_not be_valid
  end

  it 'is invalid without reviewable_type' do
    expect(@invalid_review.errors.full_messages).to include("Reviewable must exist")
  end

  it 'is invalid without reviewable_id' do
    expect(@invalid_review.errors.full_messages).to include("Reviewable must exist")
  end

  it 'is invalid without rating' do
    expect(@invalid_review.errors.full_messages).to include("Rating can't be blank")
  end

  it 'is invalid without user id' do
    expect(@invalid_review.errors.full_messages).to include("User must exist")
  end



end
