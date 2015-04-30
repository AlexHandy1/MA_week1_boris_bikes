require_relative 'Bike'

class DockingStation
	attr_accessor :capacity
	def initialize(capacity = 20)
		@capacity = capacity
		@bikes = []
	end

	def dock bike
		fail "NO MORE BIKES PLEASE" if full?
		bikes << bike
	end

	def release_bike
		fail "No Bikes Available" if empty?
		bikes.pop
	end

	private 

	attr_reader :bikes

	def empty?
		bikes.empty?
	end

	def full?
		bikes.count >= @capacity
	end
end