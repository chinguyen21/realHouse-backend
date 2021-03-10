class School < ApplicationRecord
  validates :longitude, :latitude, presence: true
end
