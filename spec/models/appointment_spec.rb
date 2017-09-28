RSpec.describe Appointment, type: :model do
  it 'has a valid factory' do
    expect(build(:appointment)).to be_valid
  end

  let(:attr) do
    {
      title: 'some title',
      client: build(:client),
      description: 'This is the description...bla bla blah',
      appointment_date: 3.days.from_now,
      completed: false
    }
  end

  let(:appointment) { build(:appointment, **attr) }

  describe 'ActiveModel validations' do
    it { expect(appointment).to validate_presence_of(:title) }

    it { expect(appointment).to allow_value(attr[:title]).for(:title) }
    it { expect(appointment).to allow_value(attr[:description]).for(:title) }
    it { expect(appointment).to allow_value(attr[:client]).for(:client) }
    it { expect(appointment).to allow_value(attr[:appoinement_date]).for(:appointment_date) }
    it { expect(appointment).to allow_value(attr[:completed]).for(:completed) }
  end

  describe 'ActiveModel associations' do
    it { expect(appointment).to belong_to(:client) }
    it { expect(appointment).to have_one(:payment) }
  end
end
