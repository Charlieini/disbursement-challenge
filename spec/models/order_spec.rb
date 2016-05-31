require 'rails_helper'

RSpec.describe Order, :type => :model do

  describe "self.updated_past_week" do
    it "should return created and updated past week orders" do
      merchant = Merchant.create(name: "order_merchant")
      shipped_cart = Cart.create(principal_amount: 100)
      unshipped_cart = Cart.create(principal_amount: 200)
      o1 = Order.create(merchant_id: merchant.id, order_number: "asd123", confirmed_at: 2.week.ago, shipped_at: 1.week.ago, unshipped_cart: unshipped_cart, shipped_cart: shipped_cart, created_at: 2.week.ago, updated_at: 1.week.ago)
      o2 = Order.create(merchant_id: merchant.id, order_number: "qwe123", confirmed_at: 2.week.ago, shipped_at: 1.week.ago, unshipped_cart: unshipped_cart, shipped_cart: shipped_cart, created_at: 2.week.ago, updated_at: 1.week.ago)
      o3 = Order.create(merchant_id: merchant.id, order_number: "qwe123", confirmed_at: 2.week.ago, shipped_at: 1.week.ago, unshipped_cart: unshipped_cart, shipped_cart: shipped_cart, created_at: 2.week.ago, updated_at: 2.week.ago)

      expect(Order.updated_past_week.length).to eq(2)
    end
  end

end
