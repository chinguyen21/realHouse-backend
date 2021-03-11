class Property < ApplicationRecord
  
  validates :full_address, :prop_type, :sqft, :year_built, :full_address, :county, :city, :state,
  :latitude, :longitude, :neighborhoods, :allow_pets, :prop_status, :owner_contact,
  :bedrooms, :bathrooms, :state_code, :price, :list_date, :last_update,
  :move_date, :lease_length, :refrigerator, :balcony, :heating, :washer, :elevator,
  :parking, :fitness, :dishwasher, :wheelchair, :camera, :digital_lock, :zipcode,
  :photos, presence: true
  
  belongs_to :user
  has_one :contract
  has_many :photos
  has_many :favorite_properties

  accepts_nested_attributes_for :photos, reject_if: ->(attributes){ attributes['src'].blank? }, allow_destroy: true
  

  def renter
    self.contract.user
  end

  # def distance(lat,lng)
  #     r = 6371000
  #     a1 = lat * Math::PI/180
  #     a2 = self.latitude * Math::PI/180
  #     delta = (self.latitude-lat) * Math::PI/180
  #     lambdaDelta = (self.longitude-lng) * Math::PI/180
  #     a = Math.sin(delta/2) * Math.sin(delta/2) +
  #               Math.cos(a1) * Math.cos(a2) *
  #               Math.sin(lambdaDelta/2) * Math.sin(lambdaDelta/2);
  #     c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1-a));
  #     d = r * c / 1609.34;
  #     d.round(2)
  # end


  # def nearby_schools
  #   hash = Hash.new
  #   School.all.each {|school| hash[school] = distance(school.latitude, school.longitude)}
  #   hash.sort_by {|k,v| v}.map {|e| e[0]}.first(5)
  # end

end

