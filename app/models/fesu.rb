class Fesu < ApplicationRecord
  has_many :microposts
  geocoded_by :address
  after_validation :geocode
end
