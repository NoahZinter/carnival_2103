require './lib/attendee'

describe Attendee do
  it 'exists' do
    attendee = Attendee.new('Bob', 20)

    expect(attendee).is_a? Attendee
  end

  it 'has attributes' do
    attendee = Attendee.new('Bob', 20)

    expect(attendee.name).to eq('Bob')
    expect(attendee.spending_money).to eq(20)
  end

  it 'starts with an empty array of interests' do
    attendee = Attendee.new('Bob', 20)

    expect(attendee.interests).to eq([])
  end

  describe '#add interest' do
    it 'adds interests to @interests' do
      attendee = Attendee.new('Bob', 20)
      attendee.add_interest('Bumper Cars')
      attendee.add_interest('Ferris Wheel')

      expect(attendee.interests).to eq(['Bumper Cars', 'Ferris Wheel'])
    end
  end
end

