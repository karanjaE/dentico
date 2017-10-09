# == Schema Information
#
# Table name: payments
#
#  id             :integer          not null, primary key
#  client_id      :integer
#  appointment_id :integer
#  payment_mode   :string
#  amount         :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
# Indexes
#
#  index_payments_on_appointment_id  (appointment_id)
#  index_payments_on_client_id       (client_id)
#
# Foreign Keys
#
#  fk_rails_...  (appointment_id => appointments.id)
#  fk_rails_...  (client_id => clients.id)
#

FactoryGirl.define do
  factory :payment do
    amount 123
    payment_mode 'cash'

    client
    appointment
  end
end
