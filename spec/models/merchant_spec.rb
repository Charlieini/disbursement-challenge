require 'rails_helper'

RSpec.describe Merchant do

  it "should name be unique" do
    merchant1 = FactoryGirl.create(:merchant)
    merchant1.save
    merchant2 = FactoryGirl.build(:merchant)
    expect { merchant2.save! }.to raise_error(ActiveRecord::RecordInvalid)
  end

end
