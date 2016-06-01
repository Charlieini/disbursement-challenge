require 'rails_helper'

RSpec.describe Comission, :type => :model do
  describe "calculate" do
    it "should return 1% of total" do
      Comission.calculate(100).to eq(1)
    end

    it "should return 1% of total even with negative number" do
      Comission.calculate(-99).to eq(-1)
    end
  end
end
