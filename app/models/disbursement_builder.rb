class DisbursementBuilder < ApplicationRecord

  def self.run_weekly
    Order.updated_past_week.each do |order|
      order.calculate_installment
    end
  end

end
