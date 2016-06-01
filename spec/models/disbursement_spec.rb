require 'rails_helper'

RSpec.describe Disbursement, :type => :model do

  describe "set" do

    it "should return id last disbursement created for merchant"do
      disbursement = FactoryGirl.create(:disbursement)
      expect(Disbursement.set(disbursement.merchant_id)).to eq(disbursement.id)
    end

    it "should create a new disbursement for merchant" do
      merchant = FactoryGirl.create(:merchant)
      Disbursement.set(merchant.id)
      expect(Disbursement.count).to eq(1)
    end
  end
end
