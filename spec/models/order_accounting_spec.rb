require 'rails_helper'

RSpec.describe OrderAccounting, :type => :model do

  it "should order_id be unique" do
    oa1 = FactoryGirl.create(:order_accounting)
    expect { FactoryGirl.create(:order_accounting) }.to raise_error(ActiveRecord::RecordInvalid)
  end

  describe "define_amount" do

    it "should define amount to 0 by default at create OrderAccounting" do
      acc1 = OrderAccounting.create
      expect(acc1.amount).to eq(0)
    end

    it "should not change amount" do
      acc1 = OrderAccounting.create
      acc1.amount = 100
      acc1.define_amount
      expect(acc1.amount).to eq(100)
    end
  end
end
