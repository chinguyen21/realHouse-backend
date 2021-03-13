class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :password, :name, :phone_number, :saved_properties, :messages

  def saved_properties
    ActiveModelSerializers::SerializableResource.new(object.saved_properties, each_serializer: PropertySerializer)
  end


end
