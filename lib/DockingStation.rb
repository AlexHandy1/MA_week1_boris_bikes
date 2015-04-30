require_relative 'Bike'

class DockingStation
	def dock bike
		fail "Docking Station Full" if @bike
		@bike = bike
	end

	def release_bike
		fail "No Bikes Available" unless @bike
		@bike
	end
end