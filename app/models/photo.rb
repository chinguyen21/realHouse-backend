class Photo < ApplicationRecord
  belongs_to :property

  validates :src, uniqueness: true
end
