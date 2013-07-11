class Category < ActiveRecord::Base
  has_many :movies
  attr_accessible :category_name, :category_id, :movie_id
end
