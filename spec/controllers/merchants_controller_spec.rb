require 'rails_helper'

RSpec.describe MerchantsController do

  before(:all) do
    @merchant = Merchant.create(name: "Dummy_merchant")
  end

  after(:all) do
    @merchant.destroy
  end

  it "should get index" do
    get :index
    expect(response).to be_ok
  end

  it "should get new" do
    get :new
    expect(response).to be_ok
  end

  it "should create merchant" do
    post :create, params: {merchant: FactoryGirl.attributes_for(:merchant)}
    expect(Merchant.count).to eq(2)
    expect(response).to redirect_to merchant_url(Merchant.last.id)
  end

  it "should show merchant" do
    get :show, params: {id: @merchant.id}
    expect(response).to be_ok
  end

  it "should get edit" do
    get :edit, params: {id: @merchant.id}
    expect(response).to be_ok
  end

  it "should update merchant" do
    patch :update, params: {id: @merchant.id, merchant: {name: "Merchant_dummy"}}
    @merchant.reload
    expect(@merchant.name).to eq("Merchant_dummy")
    expect(response).to redirect_to merchant_url
  end

  it "should destroy merchant" do
    delete :destroy, params: {id: @merchant.id}
    expect(Merchant.count).to eq(0)
    expect(response).to redirect_to merchants_url
  end

end
