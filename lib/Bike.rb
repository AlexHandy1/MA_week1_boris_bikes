# require 'byebug'

class Bike
	attr_accessor :works
	def initialize(works = true)
		@works = works
	end

	def working?
		@works
	end

	def broken?
		!@works
	end

	def report_broken
		@works = false
		@works
	end

end