class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :password, :name, :phone_number, :saved_properties

  def saved_properties
    ActiveModel::SerializableResource.new(object.saved_properties, each_serializer: PropertySerializer)
  end


end
