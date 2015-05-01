require_relative 'Van'
require_relative 'Bike'

class Garage
	DEFAULT_CAPACITY = 5
	attr_accessor :capacity

	def initialize
		@capacity ||= DEFAULT_CAPACITY
		@garage_bikes = []
	end

	def receive bike
		fail "No room in the Garage" if full?
		@garage_bikes << bike
	end

	def fix bike
		bike.works = true
	end

	def return_bike
		fail "No bikes in the Garage" if empty?
		@garage_bikes.pop
	end

	def full?
		@garage_bikes.length >= DEFAULT_CAPACITY
	end

	def empty?
		@garage_bikes.empty?
	end 
end