class Appointment < ApplicationRecord
  validates :title, presence: true

  belongs_to :client
  has_one :payment
end
