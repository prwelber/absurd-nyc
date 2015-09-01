class Adventure < ActiveRecord::Base
  belongs_to :user
  belongs_to :restaurant
  belongs_to :bar
  belongs_to :weekend

end
