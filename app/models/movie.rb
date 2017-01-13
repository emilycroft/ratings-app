class Movie < ApplicationRecord
  include Reviewables::InstanceMethods
  extend Reviewables::ClassMethods
  has_many :reviews, as: :reviewable
  validates :title, presence: true, uniqueness: true
  validates :director, presence: true

end
