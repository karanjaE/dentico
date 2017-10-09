# == Schema Information
#
# Table name: clients
#
#  id         :integer          not null, primary key
#  first_name :string
#  last_name  :string
#  email      :string
#  phone_no   :string
#  gender     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :client do
    first_name 'Jeaimie'
    last_name 'Lamister'
    email { Faker::Internet.email }
    phone_no '222-234-233-545'
    gender 'male'
  end
end

