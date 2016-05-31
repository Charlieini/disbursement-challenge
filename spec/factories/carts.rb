FactoryGirl.define do

  factory :cart do
    principal_amount 100

  end

  factory :cart2 , class: Cart do
    principal_amount 200
  end

end
