class Resort < ActiveRecord::Base
  has_many :users, through: :favorites
  has_many :favorites, :dependent => :destroy
end
