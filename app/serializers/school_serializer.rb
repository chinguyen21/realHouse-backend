class SchoolSerializer < ActiveModel::Serializer
  attributes :id, :name, :website, :street, :city, :state, :levels, :latitude, :longitude
end
