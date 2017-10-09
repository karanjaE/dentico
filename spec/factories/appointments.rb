# == Schema Information
#
# Table name: appointments
#
#  id               :integer          not null, primary key
#  title            :string
#  client_id        :integer
#  description      :text
#  appointment_date :datetime
#  completed        :boolean
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
# Indexes
#
#  index_appointments_on_client_id  (client_id)
#
# Foreign Keys
#
#  fk_rails_...  (client_id => clients.id)
#

FactoryGirl.define do
  factory :appointment do
    title { Faker::Lorem.sentence }
    description { Faker::Lorem.paragraph }
    appointment_date 2.days.from_now
    completed false

    client
  end
end
