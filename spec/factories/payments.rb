FactoryGirl.define do
  factory :payment do
    amount 123
    payment_mode 'cash'

    client
    appointment
  end
end
