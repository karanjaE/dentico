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

RSpec.describe Payment, type: :model do
  it 'has a valid factory' do
    expect(build(:payment)).to be_valid
  end

  let(:attr) do
    {
      client: build(:client),
      appointment: build(:appointment),
      amount: 450,
      payment_mode: 'credit card'
    }
  end
  let(:payment) { build(:payment, **attr) }

  describe 'ActiveModel validations' do
    it { expect(payment).to belong_to(:client) }
    it { expect(payment).to belong_to(:appointment) }

    it { expect(payment).to validate_presence_of(:amount) }
    it { expect(payment).to validate_presence_of(:payment_mode) }

    it { expect(payment).to allow_value(attr[:client]).for(:client) }
    it { expect(payment).to allow_value(attr[:appointment]).for(:appointment) }
    it { expect(payment).to allow_value(attr[:amount]).for(:amount) }
    it { expect(payment).to allow_value(attr[:payment_mode]).for(:payment_mode) }
  end

  describe 'ActiveModel associations' do
    it { expect(payment).to belong_to(:client) }
    it { expect(payment).to belong_to(:appointment) }
  end
end
