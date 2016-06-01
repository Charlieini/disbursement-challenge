require 'rails_helper'

RSpec.describe DisbursementsController, :type => :controller do

  before(:all) do
    @merchant = Merchant.create(name: "Dummy_merchant")
    @disbursement = Disbursement.create(merchant: @merchant)
  end

  after(:all) do
    @merchant.destroy
    @disbursement.destroy
  end

  it "should get index" do
    get :index, params: {merchant_id: @merchant.id}
    expect(response).to be_ok
  end

  it "should show installmets and total" do
    get :show, params: {merchant_id: @merchant.id, id: 1}
    expect(response).to be_ok
  end
end
