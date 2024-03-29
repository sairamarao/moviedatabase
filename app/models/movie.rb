class Movie < ActiveRecord::Base
  attr_accessible :genre, :title
  validates :title, :genre, :presence => true
  validates :title, :uniqueness => true
  has_many :reviews
end
