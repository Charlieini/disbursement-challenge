class Order < ApplicationRecord
  belongs_to :merchant
  belongs_to :unshipped_cart, class_name: "Cart"
  belongs_to :shipped_cart, class_name: "Cart"

  validates :merchant, :unshipped_cart, :shipped_cart, presence: true
  validates :order_number, presence: true, uniqueness: {scope: :merchant_id}
  validates :confirmed_at, presence: true

  def self.updated_past_week
    Order.where(:updated_at => 1.week.ago.beginning_of_week..1.week.ago.end_of_week)
  end

  def calculate_installment
  end

end
