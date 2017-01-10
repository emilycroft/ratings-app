class Artist < ApplicationRecord
  has_many :reviews, as: :reviewable
  validates :name, presence: true, uniqueness: true
end
