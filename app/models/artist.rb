class Artist < ApplicationRecord
  include Reviewables
  has_many :reviews, as: :reviewable
  validates :name, presence: true, uniqueness: true

end
