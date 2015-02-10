FactoryGirl.define do
  factory :user do
    name "Jean Gray"
    zip "90012"
    ski true
    snowboard true
    email "jean.gray@email.com"
    level "Green"
    travel true
    group_size 4
    decision_driver "Affordability"
  end

  factory :invalid_user do 
    name "Jean"
    zip "9001"
    ski true
    snowboard true
    email "jeangray.com"
    level "Green"
    travel true
    group_size 4
    decision_driver nil
  end

end
