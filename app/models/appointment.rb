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

class Appointment < ApplicationRecord
  validates :title, presence: true

  belongs_to :client
  has_one :payment
end
