require_relative 'Bike'

class DockingStation

	def initialize
		@bikes = []
	end

	def dock bike
		fail "Docking Station Full" if @bikes.count >= 20
		@bikes << bike
	end

	def release_bike
		fail "No Bikes Available" if @bikes.empty?
		@bikes.pop
	end
end