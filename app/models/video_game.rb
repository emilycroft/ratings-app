class VideoGame < ApplicationRecord
  has_many :reviews, as: :reviewable
end
