class User < ActiveRecord::Base
  has_many :resorts, through: :favorites
end
