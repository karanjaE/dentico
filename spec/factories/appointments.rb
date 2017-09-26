FactoryGirl.define do
  factory :appointment do
    title { Faker::Lorem.sentence }
    description { Faker::Lorem.paragraph }
    appointment_date 2.days.from_now
    completed false

    client
  end
end
