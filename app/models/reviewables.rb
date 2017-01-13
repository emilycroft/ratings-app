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
      array = self.all.collect do |instance|
        unless instance.average_rating == "No reviews"
          instance
        end
      end.compact

      array = array.sort_by do |instance|
        instance.average_rating
      end
      array.pop(5)
    end

  end



end
