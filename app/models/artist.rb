class Artist < ApplicationRecord
  has_many :reviews, as: :reviewable
end
