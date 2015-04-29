require_relative 'Bike'

class DockingStation

	def release_bike
		raise "No bikes available" unless @bike
		@bike
	end

	def dock bike
		@bike = bike
	end

end