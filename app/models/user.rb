class User < ApplicationRecord
  has_many :reviews
  has_many :media, through: :reviews
  has_secure_password
end
