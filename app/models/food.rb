class Food < ActiveRecord::Base
  attr_accessible :category, :desc, :location, :photo, :title, :latitude
end
