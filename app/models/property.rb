class Property < ApplicationRecord
  has_one :contract
  has_one :user, through: :contract
end
