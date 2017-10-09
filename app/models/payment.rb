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

class Payment < ApplicationRecord
  belongs_to :client
  belongs_to :appointment

  validates :amount, presence: true
  validates :payment_mode, presence: true
end
