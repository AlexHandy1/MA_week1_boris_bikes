require_relative 'Bike'

class DockingStation

	DEFAULT_CAPACITY = 20

	def initialize
		@bikes = []
	end

	def dock bike
		fail "Station Full" if full?
		bikes << bike
		nil
	end

	def release_bike
		fail "No bikes available" if empty?
		bikes.pop
	end

	private 

	attr_accessor :bikes

	def full?
		bikes.length >= 20
	end

	def empty?
		bikes.empty?
	end

end