class User < ApplicationRecord
  has_many :reviews
  has_many :reviewable, through: :reviews
  has_secure_password

  validates :name, :email, :password_digest, :username, presence: true
end
