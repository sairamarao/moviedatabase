class Review < ActiveRecord::Base
  attr_accessible :movie_id, :text
  validates :text, :presence => true
  belongs_to :movie
end
