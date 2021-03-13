class User < ApplicationRecord
  has_many :properties
  has_many :contracts
  has_many :favorite_properties
  has_many :messages

  def renting_properties
    self.contracts.map {|contract| contract.property }
  end

  def renters 
    self.properties.map {|property| property.contract.user}
  end

  def saved_properties
    self.favorite_properties.map {|f_property| f_property.property}
  end
  
  has_secure_password
  
  validates :email, :password, :name, :phone_number, presence: true
  validates :password, length: { minimum: 8}
  validates :email, uniqueness: true
  

end
