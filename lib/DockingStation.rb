require 'byebug'
require_relative 'Bike'
require_relative 'bike_container'

class DockingStation
	include BikeContainer
	# attr_accessor :capacity
	# def initialize(capacity = 20)
	# 	@capacity = capacity
	# 	@bikes = []
	# 	@broken = []
	# end

	def dock bike
		# fail "NO MORE BIKES PLEASE" if full?
		# bikes << bike
		add_bike bike
	end

	def release_bike
		fail "No Bikes Available" if working_bikes.empty?
		# fail "Bike not working" if bikes.last.broken?
		bikes.delete working_bikes.pop
	end

	# def send_for_repair
	# 	bikes.delete_if{|bike| broken << bike if bike.broken?}
	# 	return broken
	# end

	# attr_reader :bikes
	# attr_reader :broken
	private

		def working_bikes
			bikes.reject{ |bike| bike.broken?}
		end
	# def empty?
	# 	bikes.empty?
	# end

	# def full?
	# 	bikes.count >= @capacity
	# end
end