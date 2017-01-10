class Movie < ApplicationRecord
  has_many :reviews, as: :reviewable
  validates :title, presence: true, uniqueness: true
  validates :director, presence: true

end
