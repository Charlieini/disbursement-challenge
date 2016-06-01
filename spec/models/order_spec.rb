require 'rails_helper'

RSpec.describe Order, :type => :model do

  before(:each) do
    merchant = Merchant.create(name: "order_merchant")
    shipped_cart = Cart.create(principal_amount: 100)
    unshipped_cart = Cart.create(principal_amount: 200)
    @o1 = Order.create(merchant_id: merchant.id, order_number: "asd123", confirmed_at: 2.week.ago, shipped_at: 1.week.ago, unshipped_cart: unshipped_cart, shipped_cart: shipped_cart, created_at: 2.week.ago, updated_at: 1.week.ago)
    @o2 = Order.create(merchant_id: merchant.id, order_number: "qwe123", confirmed_at: 2.week.ago, shipped_at: 1.week.ago, unshipped_cart: unshipped_cart, shipped_cart: shipped_cart, created_at: 2.week.ago, updated_at: 1.week.ago)
    @o3 = Order.create(merchant_id: merchant.id, order_number: "zxc123", confirmed_at: 2.week.ago, shipped_at: 1.week.ago, unshipped_cart: unshipped_cart, shipped_cart: shipped_cart, created_at: 2.week.ago, updated_at: 2.week.ago)
    @o3Accounting = OrderAccounting.create(order_id: @o3.id, amount: 99)
  end

  describe "self.updated_past_week" do
    it "should return created and updated past week orders" do
      expect(Order.updated_past_week.length).to eq(2)
    end
  end

  describe "assign_order_accounting" do
    it "should create new OrderAccounting for order" do
      expect(@o1.assign_order_accounting).to eq(OrderAccounting.find_by(order_id: @o1.id))
    end

    it "should return already exist OrderAccounting" do
      expect(@o3.assign_order_accounting).to be_an_instance_of(OrderAccounting)
      expect{@o3.assign_order_accounting}.to_not change{OrderAccounting.count}
      expect(@o3.assign_order_accounting).to eq(@o3Accounting)
    end
  end

    describe "update_order_accounting_amount" do
      it "should update Order_accounting" do
        @o3.update_order_accounting_amount
        @o3Accounting.reload
        expect(@o3Accounting.amount).to eq(100)
      end
    end

    describe "generate_installment" do
      it "should generate new installment" do
        expect{@o2.generate_installment}.to change{Installment.count}.by(1)
      end
    end

end
