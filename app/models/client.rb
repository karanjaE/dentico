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

class Client < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :phone_no, presence: true
  validates :gender, presence: true

  has_many :appointments
  has_many :payments

  WillPaginate.per_page = 3
end
