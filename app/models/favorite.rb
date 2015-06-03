class Favorite < ActiveRecord::Base
  has_many :resorts
  has_many :users
end
