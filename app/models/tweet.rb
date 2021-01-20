class Tweet < ApplicationRecord
  has_one :map, dependent: :destroy
  accepts_nested_attributes_for :map
  has_one_attached :image
end
