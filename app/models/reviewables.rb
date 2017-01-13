module Reviewables

  module InstanceMethods

    def average_rating
      if !reviews.empty?
        ratings = reviews.collect { |review| review.rating }
        (ratings.inject{ |sum, el| sum + el }.to_f / ratings.size).round(2)
      else
        "No reviews"
      end
    end

  end

  module ClassMethods

    def top_5
      puts "Yay!"
    end

  end



end
