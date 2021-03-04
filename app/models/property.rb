class Property < ApplicationRecord
  belongs_to :user
  has_one :contract
  has_many :photos

  accepts_nested_attributes_for :photos, reject_if: ->(attributes){ attributes['src'].blank? }, allow_destroy: true
  
  def renter
    self.contract.user
  end

  validates :full_address, presence: true
end
