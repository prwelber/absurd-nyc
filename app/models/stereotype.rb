class Stereotype < ActiveRecord::Base
  has_many :restaurants
  has_many :bars
  has_many :weekends
end
