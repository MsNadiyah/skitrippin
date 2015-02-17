FactoryGirl.define do
  factory :resort do
    name "Awesome Test Resort"
    address "1234 Test Street, Test City, CA, 92587"
    country "USA"
    website "www.example.com"
    phone_number "1.800.465.5792"
    skiable_acres 1000
    lift_count 10
    run_count 100
    major_airport "SFO"
    local_airport "RNO"
    snowboard false
    level_green 25
    level_blue 25
    level_black 25
    level_double_black 25
    description "MyString"
  end

end
