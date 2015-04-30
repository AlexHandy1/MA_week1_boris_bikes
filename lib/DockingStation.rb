require 'byebug'
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
		fail "Bike not working" if bikes.last.broken?
		bikes.pop
	end
	attr_reader :bikes
	private 

	def empty?
		bikes.empty?
	end

	def full?
		bikes.count >= @capacity
	end
end