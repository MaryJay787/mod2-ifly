class Airport < ApplicationRecord
  has_many :flyers
  has_many :meetups
end
