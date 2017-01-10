class Book < ApplicationRecord
  has_many :reviews, as: :reviewable
  validates :title, presence: true, uniqueness: true
  validates :author, presence: true

  def average_rating
    ratings = reviews.collect { |review| review.rating }
    (ratings.inject{ |sum, el| sum + el }.to_f / ratings.size).round(2)
  end

end
