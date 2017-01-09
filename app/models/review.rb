class Review < ApplicationRecord
  belongs_to :user
  belongs_to :media, polymorphic: true
end
