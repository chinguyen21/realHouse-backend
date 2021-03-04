class User < ApplicationRecord
  has_many :properties
  has_many :contracts

  def renting_properties
    self.contracts.map {|contract| contract.property }
  end

  def renters 
    self.properties.map {|property| property.contract.user}
  end
  
  has_secure_password
  
  validates :email, :password, :name, :phone_number, presence: true
  validates :password, length: { minimum: 8}
  validates :email, uniqueness: true
  

end
