class OrderAccounting < ApplicationRecord
  validates :order_id, uniqueness: true
  belongs_to :order

end
