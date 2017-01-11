class Book < ApplicationRecord
  include Reviewables
  has_many :reviews, as: :reviewable
  has_many :likes, as: :likeable
  validates :title, presence: true, uniqueness: true
  validates :author, presence: true

end
