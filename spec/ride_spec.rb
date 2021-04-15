require './lib/ride'

describe Ride do 
  it 'exists' do 
    ride = Ride.new({name: 'Ferris Wheel', cost: 0})

    expect(ride).is_a? Ride 
  end
end 