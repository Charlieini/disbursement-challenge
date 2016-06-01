
FactoryGirl.define do

  factory :order do
    merchant
    order_number "asd123"
    confirmed_at 1.week.ago
    shipped_at 1.week.ago
    association :shipped_cart, factory: :cart
    association :unshipped_cart, factory: :cart2

  end

  factory :order2 , class: Order do
    merchant
    order_number "qwe123"
    confirmed_at 1.week.ago
    shipped_at 1.week.ago
    association :shipped_cart, factory: :cart
    association :unshipped_cart, factory: :cart2

  end

end
