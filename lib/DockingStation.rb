require_relative 'Bike'

class DockingStation

	DEFAULT_CAPACITY = 20

	def initialize
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
		bikes.count >= DEFAULT_CAPACITY
	end
end