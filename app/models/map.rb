class Map < ApplicationRecord
  has_one_attached :image
  geocoded_by :address
  before_validation :geocode

  with_options presence: true do
    validates :latitude, :longitude, :title
  end
end
