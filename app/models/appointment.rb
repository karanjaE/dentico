class Appointment < ApplicationRecord
  validates :title, presence: true

  belongs_to :client
end
