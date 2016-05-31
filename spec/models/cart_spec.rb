require 'rails_helper'

RSpec.describe Cart do

  it "should not save cart without principal_amount" do
    cart = Cart.new
    cart.save
    expect(Cart.count).to eq(0)
  end

  it "should stores only two decimals in principal_amount" do
    cart = Cart.create(principal_amount: 5.1234)
    cart.save
    cart.reload
    expect(cart.principal_amount).to eq(5.12)
  end

  it "should not change principal_amount value once saved" do
    cart = Cart.create(principal_amount: 5.12)
    cart.principal_amount = 7.89
    cart.save
    cart.reload
    expect(cart.principal_amount).to eq(5.12)
  end

end
