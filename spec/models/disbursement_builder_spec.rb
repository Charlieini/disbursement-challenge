require 'rails_helper'

RSpec.describe DisbursementBuilder, :type => :model do

  describe "run_weekly" do
    it "should perfom database queries" do
      expect(DisbursementBuilder.run_weekly).to be_a(Array)
    end
  end

end
