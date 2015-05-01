require_relative 'DockingStation'

class Van 
	DEFAULT_CAPACITY = 20 

	attr_accessor :capacity
	def initialize
		@capacity ||= DEFAULT_CAPACITY
		@van_bikes = []
	end

	def collect bike
		fail "No room in the van" if full?
		van_bikes << bike
		#send_for_repair
	end

	def deliver
		fail "No bikes in the van" if empty?
		van_bikes.pop
	end

	private 

	attr_accessor :van_bikes

	def full?
		van_bikes.length >= capacity
	end

	def empty?
		van_bikes.empty?
	end
end