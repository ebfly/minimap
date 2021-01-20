class Map < ApplicationRecord
  belongs_to :tweet

  geocoded_by :address
  after_validation :geocode
end
