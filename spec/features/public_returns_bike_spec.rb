# As a maintainer of the system,
# So that I can control the distribution of bikes,
# I'd like docking stations not to accept more bikes than their capacity.
require 'DockingStation'


feature 'Member of public returns bike' do
	scenario 'NO I\'M FULL OF BIKES' do
		docking_station = DockingStation.new
		DockingStation::DEFAULT_CAPACITY.times {docking_station.dock Bike.new}
		expect { docking_station.dock Bike.new }.to raise_error 'NO MORE BIKES PLEASE'
	end
end