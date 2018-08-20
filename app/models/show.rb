class Show < ActiveRecord::Base

  def self.highest_rating
    Show.maximum(:rating)
  end

  def self.most_popular_show
    sql = >> SQL
    SELECT name from shows ORDER_BY
    rating DESC LIMIT 1
    SQL 
    
  end

end
