class Carnival
  attr_reader :name, :rides, :attendees
  def initialize(name)
    @name = name
    @rides = []
    @attendees = []
  end

  def add_ride(ride)
    @rides << ride
  end

  def recommend_rides(attendee)
    @rides.select do |ride|
      attendee.interests.include?(ride.name)
    end
  end

  def admit(attendee)
    @attendees << attendee
  end

  def attendees_by_ride_interest
    @rides.reduce({}) do |hash, ride| 
      hash.update(ride => @attendees.select do |attendee| 
        recommend_rides(attendee).include?(ride)
      end)
    end
  end



  def ticket_lottery_contestants
    contesants = []
    potential_contestants = attendees_by_ride_interest
    potential_contestants.select do |rides, attendees|
      if rides.cost > attendees
    
    require 'pry'; binding.pry
  end


end
