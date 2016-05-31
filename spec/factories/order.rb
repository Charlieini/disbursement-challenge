
FactoryGirl.define do

  factory :order do
    merchant
    order_number "asd123"
    confirmed_at 1.week.ago
    shipped_at 1.week.ago
    unshipped_cart cart2
    shipped_cart cart

  end

end
