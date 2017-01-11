class User < ApplicationRecord
  has_many :reviews
  has_many :reviewables, through: :reviews
  
  has_many :likes
  has_many :likeables, through: :likes
  has_secure_password

  validates :name, :email, :password_digest, :username, presence: true
end
