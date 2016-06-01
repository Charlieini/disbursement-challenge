FactoryGirl.define do

  factory :order_accounting do
    order
    amount 100
  end

  factory :order_accounting2 , class: OrderAccounting do
    order
    amount 120
  end
end
