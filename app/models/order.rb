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

  def assign_order_accounting
    OrderAccounting.find_or_create_by(order_id: self.id)
  end

  def update_order_accounting_amount
    OrderAccounting.find_by(order_id: self.id).update(amount: self.shipped_cart.principal_amount)
  end

  def generate_installment
    order_accounting = assign_order_accounting

    installment_amount = (self.shipped_cart.principal_amount - order_accounting.amount) - Comission.calculate

    Installment.create(order_id: self.id, amount: installment_amount, disbursement_id: Disbursement.set(self.merchant_id))

    update_order_accounting_amount
  end

end
