class User < ApplicationRecord
  has_many :contracts
  has_many :properties, through: :contracts
end
