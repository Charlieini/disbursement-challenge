class OrderAccounting < ApplicationRecord
  validates :order_id, uniqueness: true
  belongs_to :order
  after_initialize :define_amount

  def define_amount
    self.amount ||= 0
  end

end
