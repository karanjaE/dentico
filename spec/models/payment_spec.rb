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
