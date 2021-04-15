class Carnival
  attr_reader :name, :rides
  def initialize(name)
    @name = name
    @rides = []
  end

  def add_ride(ride)
    @rides << ride
  end

  def recommend_rides(attendee)
    @rides.select do |ride|
      attendee.interests.include?(ride.name)
    end
  end
end
