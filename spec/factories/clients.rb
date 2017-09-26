FactoryGirl.define do
  factory :client do
    first_name 'Jeaimie'
    last_name 'Lamister'
    email { Faker::Internet.email }
    phone_no '222-234-233-545'
    gender 'male'
  end
end

