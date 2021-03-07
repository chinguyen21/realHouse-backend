# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'uri'
require 'net/http'
require 'openssl'
require 'json'

def destructure_photos(photos)
  hash = Hash.new
  photos.each_with_index do |photo, index|
    hash[index.to_s] = {src: photo["href"]}
  end
  hash 
end

Property.destroy_all
FavoriteProperty.destroy_all
Contract.destroy_all

# user1 = User.create(email: "admin@gmail.com", password: "admin123", name: "Admin", phone_number: "8579999999")


url = URI("https://realtor.p.rapidapi.com/properties/v2/list-for-rent?city=New%20York%20City&state_code=NY&limit=100&offset=0&prop_type=apartment&sort=photos&price_min=2500")

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_NONE

request = Net::HTTP::Get.new(url)
request["x-rapidapi-key"] = ENV["MY_API_KEY"]
request["x-rapidapi-host"] = 'realtor.p.rapidapi.com'

response = http.request(request)
all_properties = JSON.parse(response.read_body)["properties"]


all_properties.each do |property|
  photos = property["photos"].first(6)
  if property["community"]
    Property.create(
      prop_type: property["prop_type"],
      sqft: property["community"]["sqft_min"].to_s + " " + property["community"]["sqft_max"].to_s,
      year_built: property["year_built"],
      list_date: property["list_date"],
      last_update: property["last_update"],
      full_address: property["address"]["line"],
      county: property["address"]["county"],
      city: property["address"]["city"],
      state: property["address"]["state"],
      state_code: property["address"]["state_code"],
      latitude: property["address"]["lat"],
      longitude: property["address"]["lon"],
      neighborhoods: property["address"]["neighborhoods"] ? property["address"]["neighborhoods"].map{|n| n["name"]} : "",
      allow_pets: property["client_display_flags"]["allows_dogs"],
      prop_status: "active",
      price: property["community"]["price_min"].to_s + " " + property["community"]["price_max"].to_s,
      owner_contact: property["community"]["contact_number"],
      bedrooms: property["community"]["beds_min"].to_s + " " + property["community"]["beds_max"].to_s,
      bathrooms: property["community"]["baths_min"].to_s + " " + property["community"]["baths_max"].to_s,
      user_id: 1,
      photos_attributes: destructure_photos(photos)
    )
  else 
    Property.create(
      prop_type: property["prop_type"],
      sqft: property["building_size"]["size"],
      year_built: property["year_built"],
      list_date: property["list_date"],
      last_update: property["last_update"],
      full_address: property["address"]["line"],
      county: property["address"]["county"],
      city: property["address"]["city"],
      state: property["address"]["state"],
      state_code: property["address"]["state_code"],
      latitude: property["address"]["lat"],
      longitude: property["address"]["lon"],
      neighborhoods: property["address"]["neighborhoods"] ? property["address"]["neighborhoods"].map{|n| n["name"]} : "",
      allow_pets: property["client_display_flags"]["allows_dogs"],
      prop_status: "active",
      price: property["price"],
      owner_contact: "(857) 999-9999",
      bedrooms: property["beds"],
      bathrooms: property["baths"],
      user_id: 1,
      photos_attributes: destructure_photos(photos)
    )
  end
end



url1 = URI("https://realtor.p.rapidapi.com/properties/v2/list-for-rent?city=Boston&state_code=MA&limit=100&offset=0&prop_type=apartment&sort=photos&price_min=2500")

http = Net::HTTP.new(url1.host, url1.port)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_NONE

request = Net::HTTP::Get.new(url1)
request["x-rapidapi-key"] = ENV["MY_API_KEY"]
request["x-rapidapi-host"] = 'realtor.p.rapidapi.com'

response = http.request(request)
all_properties = JSON.parse(response.read_body)["properties"]


all_properties.each do |property|
  photos = property["photos"].first(6)
  if property["community"]
    Property.create(
      prop_type: property["prop_type"],
      sqft: property["community"]["sqft_min"].to_s + " " + property["community"]["sqft_max"].to_s,
      year_built: property["year_built"],
      list_date: property["list_date"],
      last_update: property["last_update"],
      full_address: property["address"]["line"],
      county: property["address"]["county"],
      city: property["address"]["city"],
      state: property["address"]["state"],
      state_code: property["address"]["state_code"],
      latitude: property["address"]["lat"],
      longitude: property["address"]["lon"],
      neighborhoods: property["address"]["neighborhoods"] ? property["address"]["neighborhoods"].map{|n| n["name"]} : "",
      allow_pets: property["client_display_flags"]["allows_dogs"],
      prop_status: "active",
      price: property["community"]["price_min"].to_s + " " + property["community"]["price_max"].to_s,
      owner_contact: property["community"]["contact_number"],
      bedrooms: property["community"]["beds_min"].to_s + " " + property["community"]["beds_max"].to_s,
      bathrooms: property["community"]["baths_min"].to_s + " " + property["community"]["baths_max"].to_s,
      user_id: 1,
      photos_attributes: destructure_photos(photos)
    )
  else 
    Property.create(
      prop_type: property["prop_type"],
      sqft: property["building_size"]["size"],
      year_built: property["year_built"],
      list_date: property["list_date"],
      last_update: property["last_update"],
      full_address: property["address"]["line"],
      county: property["address"]["county"],
      city: property["address"]["city"],
      state: property["address"]["state"],
      state_code: property["address"]["state_code"],
      latitude: property["address"]["lat"],
      longitude: property["address"]["lon"],
      neighborhoods: property["address"]["neighborhoods"] ? property["address"]["neighborhoods"].map{|n| n["name"]} : "",
      allow_pets: property["client_display_flags"]["allows_dogs"],
      prop_status: "active",
      price: property["price"],
      owner_contact: "(857) 999-9999",
      bedrooms: property["beds"],
      bathrooms: property["baths"],
      user_id: 1,
      photos_attributes: destructure_photos(photos)
    )
  end
end


  