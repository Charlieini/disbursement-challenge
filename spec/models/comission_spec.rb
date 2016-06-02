require 'rails_helper'

RSpec.describe Comission, :type => :model do
  describe "calculate" do
    it "should return 1% of total" do
      expect(Comission.calculate(100)).to eq(1)
    end

    it "should return the comission if a shopper return a item" do
      expect(Comission.calculate(-100)).to eq(-1)
    end
  end
end
