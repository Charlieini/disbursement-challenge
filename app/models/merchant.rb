class Merchant < ApplicationRecord
  validates :name, uniqueness: true
  has_many :disbursements
end
