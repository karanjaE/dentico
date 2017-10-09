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

RSpec.describe Client, type: :model do
  it 'has a valid factory' do
    expect(build(:client)).to be_valid
  end

  let(:attributes) do
    {
      first_name: 'Teddy',
      last_name: 'Bear',
      email: 'teddybear@email.com',
      gender: 'male',
      phone_no: '222-555-666-777'
    }
  end
  let(:client) { build(:client, **attributes) }

  describe 'ActiveModel validations' do
    it { expect(client).to validate_presence_of(:first_name) }
    it { expect(client).to validate_presence_of(:last_name) }
    it { expect(client).to validate_presence_of(:email) }
    it { expect(client).to validate_presence_of(:phone_no) }
    it { expect(client).to validate_presence_of(:gender) }
  end

  describe 'ActiveModel associations' do
    it { expect(client).to have_many(:appointments) }
    it { expect(client).to have_many(:payments) }
  end
end

