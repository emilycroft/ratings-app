class Review < ApplicationRecord
  belongs_to :user
  belongs_to :reviewable, polymorphic: true
  validates :content, :rating, presence: true
  validates :rating, numericality: { only_integer: true, less_than_or_equal_to: 5, greater_than_or_equal_to: 1 }
  validates :user_id, uniqueness: { scope: :reviewable, message: "You can only write one review" }
end
