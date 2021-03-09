class PropertySerializer < ActiveModel::Serializer
  attributes :id, :prop_type, :sqft, :year_built, :full_address, :county, :city, :state,
  :latitude, :longitude, :neighborhoods, :allow_pets, :prop_status, :owner_contact,
  :bedrooms, :bathrooms, :state_code, :price, :list_date, :last_update, :photos, :favorite_properties

end
