class Artist < ApplicationRecord
  has_many :reviews, as: :reviewable
  validates :name, presence: true, uniqueness: true

  def average_rating
    ratings = reviews.collect { |review| review.rating }
    (ratings.inject{ |sum, el| sum + el }.to_f / ratings.size).round(2)
  end
  
end
