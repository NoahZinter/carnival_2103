require './lib/carnival'
require './lib/attendee'
require './lib/ride'

describe Carnival do
  it 'exists' do
    jeffco_fair = Carnival.new("Jefferson County Fair")

    expect(jeffco_fair).is_a? Carnival
  end

  it 'has attributes' do
    jeffco_fair = Carnival.new("Jefferson County Fair")

    expect(jeffco_fair.name).to eq("Jefferson County Fair")
    expect(jeffco_fair.rides).to eq([])
  end
end

