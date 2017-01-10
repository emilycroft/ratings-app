class Book < ApplicationRecord
  include Reviewables
  has_many :reviews, as: :reviewable
  validates :title, presence: true, uniqueness: true
  validates :author, presence: true

end
