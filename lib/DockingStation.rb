require_relative 'Bike'

class DockingStation
	DEFAULT_CAPACITY = 20

	def initialize
		@bikes = []
	end

	def dock bike
		fail "Docking Station Full" if full?
		bikes << bike
	end

	def release_bike
		fail "No Bikes Available" if empty?
		bikes.pop
	end

	attr_reader :bikes
	private

	def empty?
		bikes.empty?
	end

	def full?
		bikes.count >= DEFAULT_CAPACITY
	end
end