class Client < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :phone_no, presence: true
  validates :gender, presence: true

  has_many :appointments
  has_many :payments
end
