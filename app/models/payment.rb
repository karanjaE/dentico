class Payment < ApplicationRecord
  belongs_to :client
  belongs_to :appointment

  validates :amount, presence: true
  validates :payment_mode, presence: true
end
